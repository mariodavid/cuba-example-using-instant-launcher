import groovy.json.JsonSlurper
import com.haulmont.cuba.gui.components.Frame.NotificationType
try {
  def joke = new JsonSlurper().parse("http://api.icndb.com/jokes/random".toURL()).value.joke
  frame.showNotification("Joke: $joke", NotificationType.HUMANIZED_HTML)
}
catch (Exception e) {
  frame.showNotification("Joke could not be fetched... ;-(", NotificationType.ERROR)
}