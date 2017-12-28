import grails.plugins.metadata.GrailsPlugin
import org.grails.gsp.compiler.transform.LineNumber
import org.grails.gsp.GroovyPage
import org.grails.web.taglib.*
import org.grails.taglib.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_iot_challenge_applicationlist_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/application/list.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
createTagBody(2, {->
createClosureForHtmlPart(2, 3)
invokeTag('captureTitle','sitemesh',4,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',4,[:],2)
printHtmlPart(3)
})
invokeTag('captureHead','sitemesh',5,[:],1)
printHtmlPart(4)
createTagBody(1, {->
printHtmlPart(5)
loop:{
int i = 0
for( application in (applications) ) {
printHtmlPart(6)
expressionOut.print(i+1)
printHtmlPart(7)
expressionOut.print(application.teamName)
printHtmlPart(8)
expressionOut.print(application.student1)
printHtmlPart(9)
expressionOut.print(application.email1)
printHtmlPart(10)
expressionOut.print(application.student2)
printHtmlPart(9)
expressionOut.print(application.email2)
printHtmlPart(10)
expressionOut.print(application.student3)
printHtmlPart(9)
expressionOut.print(application.email3)
printHtmlPart(10)
expressionOut.print(application.student4)
printHtmlPart(9)
expressionOut.print(application.email4)
printHtmlPart(10)
expressionOut.print(application.student5)
printHtmlPart(9)
expressionOut.print(application.email5)
printHtmlPart(10)
expressionOut.print(application.student6)
printHtmlPart(9)
expressionOut.print(application.email6)
printHtmlPart(11)
createTagBody(3, {->
printHtmlPart(12)
expressionOut.print(application.cvPath)
})
invokeTag('link','g',45,['uri':("/cv/${application.cvPath}"),'absolute':("true")],3)
printHtmlPart(13)
i++
}
}
printHtmlPart(14)
})
invokeTag('captureBody','sitemesh',77,[:],1)
printHtmlPart(15)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1459112170000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
