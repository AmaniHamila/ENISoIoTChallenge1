import grails.plugins.metadata.GrailsPlugin
import org.grails.gsp.compiler.transform.LineNumber
import org.grails.gsp.GroovyPage
import org.grails.web.taglib.*
import org.grails.taglib.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_iot_challenge_layoutsmain_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/layouts/main.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':(""),'charset':("utf-8")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',5,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("X-UA-Compatible"),'content':("IE=edge")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',6,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1.0")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("")],-1)
printHtmlPart(1)
createTagBody(2, {->
createTagBody(3, {->
printHtmlPart(2)
invokeTag('layoutTitle','g',10,['default':("ENISo IoT Challenge")],-1)
printHtmlPart(1)
})
invokeTag('captureTitle','sitemesh',11,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',11,[:],2)
printHtmlPart(3)
invokeTag('stylesheet','asset',13,['href':("bootstrap.min.css")],-1)
printHtmlPart(4)
invokeTag('stylesheet','asset',20,['href':("jasny-bootstrap.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',21,['href':("style.css")],-1)
printHtmlPart(5)
invokeTag('javascript','asset',23,['src':("ie8-responsive-file-warning.js")],-1)
printHtmlPart(6)
expressionOut.print(assetPath(src: 'apple-icon-57x57.png'))
printHtmlPart(7)
expressionOut.print(assetPath(src: 'apple-icon-60x60.png'))
printHtmlPart(8)
expressionOut.print(assetPath(src: 'apple-icon-72x72.png'))
printHtmlPart(9)
expressionOut.print(assetPath(src: 'apple-icon-76x76.png'))
printHtmlPart(10)
expressionOut.print(assetPath(src: 'apple-icon-114x114.png'))
printHtmlPart(11)
expressionOut.print(assetPath(src: 'apple-icon-120x120.png'))
printHtmlPart(12)
expressionOut.print(assetPath(src: 'apple-icon-144x144.png'))
printHtmlPart(13)
expressionOut.print(assetPath(src: 'apple-icon-152x152.png'))
printHtmlPart(14)
expressionOut.print(assetPath(src: 'apple-icon-180x180.png'))
printHtmlPart(15)
expressionOut.print(assetPath(src: 'android-icon-192x192.png'))
printHtmlPart(16)
expressionOut.print(assetPath(src: 'favicon-32x32.png'))
printHtmlPart(17)
expressionOut.print(assetPath(src: 'favicon-96x96.png'))
printHtmlPart(18)
expressionOut.print(assetPath(src: 'favicon-16x16.png'))
printHtmlPart(19)
expressionOut.print(assetPath(src: 'manifest.json'))
printHtmlPart(20)
invokeTag('captureMeta','sitemesh',48,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("msapplication-TileColor"),'content':("#ffffff")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',49,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("msapplication-TileImage"),'content':(assetPath(src: 'ms-icon-144x144.png'))],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',50,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("theme-color"),'content':("#ffffff")],-1)
printHtmlPart(1)
invokeTag('layoutHead','g',50,[:],-1)
printHtmlPart(21)
})
invokeTag('captureHead','sitemesh',50,[:],1)
printHtmlPart(22)
createTagBody(1, {->
printHtmlPart(23)
invokeTag('javascript','asset',61,['src':("jquery-1.11.1.min.js")],-1)
printHtmlPart(22)
invokeTag('javascript','asset',62,['src':("bootstrap.min.js")],-1)
printHtmlPart(22)
invokeTag('javascript','asset',62,['src':("jquery.backstretch.min.js")],-1)
printHtmlPart(22)
invokeTag('javascript','asset',63,['src':("scrollReveal.js")],-1)
printHtmlPart(22)
invokeTag('javascript','asset',64,['src':("jquery.downCount.js")],-1)
printHtmlPart(22)
invokeTag('javascript','asset',67,['src':("jasny-bootstrap.min.js")],-1)
printHtmlPart(22)
invokeTag('javascript','asset',68,['src':("animatescroll.min.js")],-1)
printHtmlPart(22)
invokeTag('javascript','asset',69,['src':("parallax.min.js")],-1)
printHtmlPart(22)
invokeTag('javascript','asset',69,['src':("custom.js")],-1)
printHtmlPart(24)
invokeTag('layoutBody','g',70,[:],-1)
printHtmlPart(24)
})
invokeTag('captureBody','sitemesh',70,[:],1)
printHtmlPart(25)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1459594453000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
