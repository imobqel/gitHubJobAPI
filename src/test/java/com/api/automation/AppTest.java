package com.api.automation;


import org.jbehave.core.configuration.Configuration;
import org.jbehave.core.configuration.MostUsefulConfiguration;
import org.jbehave.core.embedder.Embedder;
import org.jbehave.core.embedder.EmbedderControls;
import org.jbehave.core.io.CodeLocations;
import org.jbehave.core.io.LoadFromClasspath;
import org.jbehave.core.io.StoryFinder;
import org.jbehave.core.junit.JUnitStories;
import org.jbehave.core.reporters.Format;
import org.jbehave.core.reporters.StoryReporterBuilder;
import org.jbehave.core.steps.InjectableStepsFactory;
import org.jbehave.core.steps.InstanceStepsFactory;
import org.junit.runner.RunWith;

import com.helper.PropertiesHelper;
import com.steps.ServiceStep;

import java.util.Arrays;
import java.util.List;
import java.util.Properties;
import static java.util.Arrays.asList;



public class AppTest extends JUnitStories {

	
	
	
	static PropertiesHelper propHelper=new PropertiesHelper();
    static Properties prop = propHelper.readPropertiesApplicationFile();
    
    private static String getStoriesRun=prop.getProperty("pathStoriesRun");
    private static String getMetaTags=prop.getProperty("metaTags");
    



    private Embedder embedder;

    public AppTest(){
        this.embedder = new Embedder();
        embedder.useEmbedderControls(
                new EmbedderControls()
                        .doGenerateViewAfterStories(false)
                        .doVerboseFailures(true)
        );
        useEmbedder(embedder);
    }




    @Override
    public Configuration configuration() {
        return new MostUsefulConfiguration()
                .useStoryLoader(new LoadFromClasspath(this.getClass().getClassLoader()))
                .useStoryReporterBuilder(new StoryReporterBuilder()
                        .withCodeLocation(CodeLocations.codeLocationFromClass(this.getClass()))
                        .withDefaultFormats().withFormats(Format.HTML,Format.STATS,Format.CONSOLE)
                        .withFailureTraceCompression(false));
    }


    @Override
    public InjectableStepsFactory stepsFactory() {
        return new InstanceStepsFactory(configuration(),new ServiceStep());
    }




    @Override
    protected List<String> storyPaths() {
        this.embedder.useMetaFilters(metaTagFilters());
        List<String> storyPaths = new StoryFinder().findPaths(CodeLocations.codeLocationFromClass(this.getClass()).getFile(),
                asList("**/stories" + System.getProperty("storyFilter", getStoriesRun) + ".story"), null);

        return storyPaths;
    }
    
    private List<String>  metaTagFilters(){
        return Arrays.asList("-skip",getMetaTags);
     }

}
