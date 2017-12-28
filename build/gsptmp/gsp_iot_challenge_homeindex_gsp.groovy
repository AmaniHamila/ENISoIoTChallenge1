import grails.plugins.metadata.GrailsPlugin
import org.grails.gsp.compiler.transform.LineNumber
import org.grails.gsp.GroovyPage
import org.grails.web.taglib.*
import org.grails.taglib.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_iot_challenge_homeindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/home/index.gsp" }
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
expressionOut.print(assetPath(src: 'theone111.jpg'))
printHtmlPart(4)
})
invokeTag('captureHead','sitemesh',132,[:],1)
printHtmlPart(5)
createTagBody(1, {->
printHtmlPart(6)
invokeTag('image','asset',419,['src':("TimelineFinal.png")],-1)
printHtmlPart(7)
createClosureForHtmlPart(8, 2)
invokeTag('uploadForm','g',606,['controller':("application"),'method':("POST"),'class':("contact-form"),'action':("save")],2)
printHtmlPart(9)
invokeTag('img','g',614,['dir':("images"),'file':("eniso.jpg"),'style':("    max-width: 100px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',615,['dir':("images"),'file':("icteos.jpg"),'style':("    max-width: 200px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',618,['dir':("images"),'file':("WAYCON.jpg"),'style':("    max-width: 300px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',623,['dir':("images"),'file':("Logo_STS.png"),'style':("    max-width: 200px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',628,['dir':("images"),'file':("chifco.png"),'style':("    max-width: 200px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',631,['dir':("images"),'file':("STM.png"),'style':("    max-width: 150px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',633,['dir':("images"),'file':("yaslamen.png"),'style':("    max-width: 200px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',635,['dir':("images"),'file':("Educanet11.jpg"),'style':("    max-width: 300px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',636,['dir':("images"),'file':("just-in-time.jpg"),'style':("    max-width: 150px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',637,['dir':("images"),'file':("coca.jpg"),'style':("    max-width: 150px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',638,['dir':("images"),'file':("ceralis.jpg"),'style':("    max-width: 200px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',639,['dir':("images"),'file':("LogoTES.png"),'style':("    max-width: 300px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',640,['dir':("images"),'file':("pcs.jpg"),'style':("    max-width: 150px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',641,['dir':("images"),'file':("Viplogo.jpg"),'style':("    max-width: 150px;"),'class':("img-rounded")],-1)
printHtmlPart(10)
invokeTag('img','g',642,['dir':("images"),'file':("knooz-fm.png"),'style':("    max-width: 150px;"),'class':("img-rounded")],-1)
printHtmlPart(11)
invokeTag('image','asset',646,['src':("pic.png")],-1)
printHtmlPart(12)
invokeTag('img','g',654,['dir':("images"),'file':("iott.png"),'style':("    max-width: 242px;")],-1)
printHtmlPart(13)
invokeTag('img','g',675,['dir':("images"),'file':("facebook_icon.png"),'style':("     margin-top: 62px;   max-width: 242px;")],-1)
printHtmlPart(14)
invokeTag('img','g',682,['dir':("images"),'file':("logodepartment.png"),'style':("    max-width: 300px;"),'class':("img-rounded")],-1)
printHtmlPart(15)
invokeTag('img','g',684,['dir':("images"),'file':("ieee.png"),'style':("    max-width: 200px;"),'class':("img-rounded")],-1)
printHtmlPart(16)
invokeTag('message','g',693,['code':("spinner.alt"),'default':("Loading&hellip;")],-1)
printHtmlPart(17)
expressionOut.print(assetPath(src: 'lol.jpg'))
printHtmlPart(18)
})
invokeTag('captureBody','sitemesh',736,[:],1)
printHtmlPart(19)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1460589109000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'none'
public static final String TAGLIB_CODEC = 'none'
}
