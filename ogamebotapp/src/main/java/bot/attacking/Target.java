package bot.attacking;

import ogame.objects.game.Coordinates;
import ogame.objects.game.Resource;
import ogame.objects.game.data.PlayerData;
import ogame.objects.game.data.Server;
import ogame.objects.game.messages.CombatMessage;
import ogame.objects.game.messages.EspionageMessage;
import ogame.pages.Research;

import java.io.IOException;
import java.time.LocalDateTime;
import java.util.HashMap;

/**
 * Created by jarndt on 6/14/17.
 */
public class Target {
    private EspionageMessage espionageMessage;
    private CombatMessage combatMessage;
    private PlayerData player;
    private LocalDateTime lastAttack, lastEspionage;
    private long points;
    private Coordinates coordinates;
    private Resource resources, debris;
    private HashMap<String,Integer> levels;
    private String activity;
    private Server server;
    private int lastProbeSentCount = -1;

    public Target(Server server, Coordinates coordinates) {
        this.server = server;
        this.coordinates = coordinates;
    }

    public Target(Server server, CombatMessage combatMessage) {
        this.server = server;
        this.combatMessage = combatMessage;
        this.coordinates = combatMessage.getDefenderCoordinates();
        this.lastAttack = combatMessage.getMessageDate();
    }

    public Target(Server server, EspionageMessage json_esp_object) {
        this.server = server;
        this.espionageMessage = json_esp_object;
        this.coordinates = espionageMessage.getCoordinates();
        this.lastEspionage = espionageMessage.getMessageDate();
    }

    public int getSmallCargosNeeded() {
        int smallCargosNeeded = 1;
        if(espionageMessage != null)
            smallCargosNeeded = espionageMessage.getSmallCargosNeeded();
        else if(combatMessage != null)
            smallCargosNeeded = (int) (combatMessage.getLoot().getTotal()/5000);

        return smallCargosNeeded;
    }

    public int getEspionageProbesNeeded(HashMap<String,Integer> research) {
        if(espionageMessage != null)
            if(espionageMessage.getLevels().containsKey(Research.ESPIONAGE)) {
                int yourEsp = research.get(Research.ESPIONAGE), oppsEsp = espionageMessage.getLevels().get(Research.ESPIONAGE);
                //Y = -1 (your esp > opponests esp), 0 if equal, -1 otherwise
                //probes = 3+(Y (your esp - opponet's esp)^2 )
                return (int) (3 + (yourEsp > oppsEsp ? -1 : yourEsp == oppsEsp ? 0 : -1)*Math.pow(yourEsp - oppsEsp,2));
            }
        if(lastProbeSentCount == 1)
            return 3;
        if(lastProbeSentCount == 3)
            return 6;
        if(lastProbeSentCount == 6)
            return 7;
        if(lastProbeSentCount == 7)
            return 8;
        if(lastProbeSentCount == 8)
            return 11;
        if(lastProbeSentCount == 11)
            return 16;
        return 1;
    }

    public boolean hasDefense() throws IOException {
        if(espionageMessage != null)
            return espionageMessage.hasDefense();
        if(combatMessage != null)
            return combatMessage.hasDefense();
        return false;
    }

    public int getLastProbeSentCount() {
        return lastProbeSentCount;
    }

    public void setLastProbeSentCount(int lastProbeSentCount) {
        this.lastProbeSentCount = lastProbeSentCount;
    }

    public EspionageMessage getEspionageMessage() {
        return espionageMessage;
    }

    public void setEspionageMessage(EspionageMessage espionageMessage) {
        this.espionageMessage = espionageMessage;
    }

    public CombatMessage getCombatMessage() {
        return combatMessage;
    }

    public void setCombatMessage(CombatMessage combatMessage) {
        this.combatMessage = combatMessage;
    }

    public PlayerData getPlayer() {
        return player;
    }

    public void setPlayer(PlayerData player) {
        this.player = player;
    }

    public LocalDateTime getLastAttack() {
        if(lastAttack == null)
            lastAttack = LocalDateTime.now().minusYears(1);
        return lastAttack;
    }

    public void setLastAttack(LocalDateTime lastAttack) {
        this.lastAttack = lastAttack;
    }

    public LocalDateTime getLastEspionage() {
        return lastEspionage;
    }

    public void setLastEspionage(LocalDateTime lastEspionage) {
        this.lastEspionage = lastEspionage;
    }

    public long getPoints() {
        return points;
    }

    public void setPoints(long points) {
        this.points = points;
    }

    public Coordinates getCoordinates() {
        return coordinates;
    }

    public void setCoordinates(Coordinates coordinates) {
        this.coordinates = coordinates;
    }

    public Resource getResources() {
        return resources;
    }

    public void setResources(Resource resources) {
        this.resources = resources;
    }

    public Resource getDebris() {
        return debris;
    }

    public void setDebris(Resource debris) {
        this.debris = debris;
    }

    public HashMap<String, Integer> getLevels() {
        return levels;
    }

    public void setLevels(HashMap<String, Integer> levels) {
        this.levels = levels;
    }

    public String getActivity() {
        return activity;
    }

    public void setActivity(String activity) {
        this.activity = activity;
    }

    public Server getServer() {
        return server;
    }

    public void setServer(Server server) {
        this.server = server;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Target target = (Target) o;

        if (points != target.points) return false;
        if (espionageMessage != null ? !espionageMessage.equals(target.espionageMessage) : target.espionageMessage != null)
            return false;
        if (combatMessage != null ? !combatMessage.equals(target.combatMessage) : target.combatMessage != null)
            return false;
        if (player != null ? !player.equals(target.player) : target.player != null) return false;
        if (lastAttack != null ? !lastAttack.equals(target.lastAttack) : target.lastAttack != null) return false;
        if (lastEspionage != null ? !lastEspionage.equals(target.lastEspionage) : target.lastEspionage != null)
            return false;
        if (coordinates != null ? !coordinates.equals(target.coordinates) : target.coordinates != null) return false;
        if (resources != null ? !resources.equals(target.resources) : target.resources != null) return false;
        if (debris != null ? !debris.equals(target.debris) : target.debris != null) return false;
        if (levels != null ? !levels.equals(target.levels) : target.levels != null) return false;
        if (activity != null ? !activity.equals(target.activity) : target.activity != null) return false;
        return server != null ? server.equals(target.server) : target.server == null;
    }

    @Override
    public int hashCode() {
        int result = espionageMessage != null ? espionageMessage.hashCode() : 0;
        result = 31 * result + (combatMessage != null ? combatMessage.hashCode() : 0);
        result = 31 * result + (player != null ? player.hashCode() : 0);
        result = 31 * result + (lastAttack != null ? lastAttack.hashCode() : 0);
        result = 31 * result + (lastEspionage != null ? lastEspionage.hashCode() : 0);
        result = 31 * result + (int) (points ^ (points >>> 32));
        result = 31 * result + (coordinates != null ? coordinates.hashCode() : 0);
        result = 31 * result + (resources != null ? resources.hashCode() : 0);
        result = 31 * result + (debris != null ? debris.hashCode() : 0);
        result = 31 * result + (levels != null ? levels.hashCode() : 0);
        result = 31 * result + (activity != null ? activity.hashCode() : 0);
        result = 31 * result + (server != null ? server.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Target{" +
                "espionageMessage=" + espionageMessage +
                ", combatMessage=" + combatMessage +
                ", player=" + player +
                ", lastAttack=" + lastAttack +
                ", lastEspionage=" + lastEspionage +
                ", points=" + points +
                ", coordinates=" + coordinates +
                ", resources=" + resources +
                ", debris=" + debris +
                ", levels=" + levels +
                ", activity='" + activity + '\'' +
                ", server=" + server +
                '}';
    }

}