package ogame.pages;

import bot.Bot;
import ogame.objects.game.BuildTask;
import ogame.objects.game.Buildable;
import ogame.objects.game.planet.Planet;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by jarndt on 5/30/17.
 */
public class Shipyard implements OgamePage{
    public static final String SHIPYARD = "Shipyard";

    @Override
    public String getPageName() {
        return SHIPYARD;
    }
    @Override
    public String getXPathSelector() {
        return "//*[@id='menuTable']/li[6]/a/span";
    }

    @Override
    public String getCssSelector() {
        return "#menuTable > li:nth-child(6) > a > span";
    }

    @Override
    public String uniqueXPath() {
        return "//*[@id='buttonz']/div[1]/h2/span[1]";
    }

    @Override
    public void parsePage(Bot b, Document document) {
        PageController.parseGenericBuildings(document,b);

        PageController.parseShips(b,document);
    }
}
