.class public Lorg/mortbay/jetty/webapp/WebXmlConfiguration;
.super Ljava/lang/Object;
.source "WebXmlConfiguration.java"

# interfaces
.implements Lorg/mortbay/jetty/webapp/Configuration;


# static fields
.field static class$java$lang$String:Ljava/lang/Class;

.field static class$java$util$EventListener:Ljava/lang/Class;

.field static class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

.field static class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

.field static class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;


# instance fields
.field protected _constraintMappings:Ljava/lang/Object;

.field protected _context:Lorg/mortbay/jetty/webapp/WebAppContext;

.field protected _defaultWelcomeFileList:Z

.field protected _errorPages:Ljava/util/Map;

.field protected _filterMappings:Ljava/lang/Object;

.field protected _filters:Ljava/lang/Object;

.field protected _hasJSP:Z

.field protected _jspServletClass:Ljava/lang/String;

.field protected _jspServletName:Ljava/lang/String;

.field protected _listeners:Ljava/lang/Object;

.field protected _servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

.field protected _servletMappings:Ljava/lang/Object;

.field protected _servlets:Ljava/lang/Object;

.field protected _version:I

.field protected _welcomeFiles:Ljava/lang/Object;

.field protected _xmlParser:Lorg/mortbay/xml/XmlParser;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->webXmlParser()Lorg/mortbay/xml/XmlParser;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    .line 79
    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 85
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    .local v0, "x1":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    throw v1
.end method

.method public static webXmlParser()Lorg/mortbay/xml/XmlParser;
    .locals 15

    .prologue
    .line 83
    new-instance v11, Lorg/mortbay/xml/XmlParser;

    invoke-direct {v11}, Lorg/mortbay/xml/XmlParser;-><init>()V

    .line 85
    .local v11, "xmlParser":Lorg/mortbay/xml/XmlParser;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_0

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_0
    const-string v14, "/javax/servlet/resources/web-app_2_2.dtd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 86
    .local v1, "dtd22":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_1

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_1
    const-string v14, "/javax/servlet/resources/web-app_2_3.dtd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 87
    .local v2, "dtd23":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_2

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_2
    const-string v14, "/javax/servlet/resources/jsp_2_0.xsd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v4

    .line 88
    .local v4, "jsp20xsd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_3

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_3
    const-string v14, "/javax/servlet/resources/jsp_2_1.xsd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    .line 89
    .local v5, "jsp21xsd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_4

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_4
    const-string v14, "/javax/servlet/resources/j2ee_1_4.xsd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 90
    .local v3, "j2ee14xsd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_5

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_5
    const-string v14, "/javax/servlet/resources/web-app_2_4.xsd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v7

    .line 91
    .local v7, "webapp24xsd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_6

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_6
    const-string v14, "/javax/servlet/resources/web-app_2_5.xsd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v8

    .line 92
    .local v8, "webapp25xsd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_7

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_7
    const-string v14, "/javax/servlet/resources/XMLSchema.dtd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    .line 93
    .local v6, "schemadtd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_8

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_8
    const-string v14, "/javax/servlet/resources/xml.xsd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v12

    .line 94
    .local v12, "xmlxsd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_9

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_9
    const-string v14, "/javax/servlet/resources/j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v9

    .line 95
    .local v9, "webservice11xsd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_a

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_a
    const-string v14, "/javax/servlet/resources/javaee_web_services_client_1_2.xsd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v10

    .line 96
    .local v10, "webservice12xsd":Ljava/net/URL;
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    if-nez v13, :cond_b

    const-string v13, "org.mortbay.jetty.webapp.WebAppContext"

    invoke-static {v13}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    sput-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    :goto_b
    const-string v14, "/javax/servlet/resources/datatypes.dtd"

    invoke-virtual {v13, v14}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 97
    .local v0, "datatypesdtd":Ljava/net/URL;
    const-string v13, "web-app_2_2.dtd"

    invoke-virtual {v11, v13, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 98
    const-string v13, "-//Sun Microsystems, Inc.//DTD Web Application 2.2//EN"

    invoke-virtual {v11, v13, v1}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 99
    const-string v13, "web.dtd"

    invoke-virtual {v11, v13, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 100
    const-string v13, "web-app_2_3.dtd"

    invoke-virtual {v11, v13, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 101
    const-string v13, "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"

    invoke-virtual {v11, v13, v2}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 102
    const-string v13, "XMLSchema.dtd"

    invoke-virtual {v11, v13, v6}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 103
    const-string v13, "http://www.w3.org/2001/XMLSchema.dtd"

    invoke-virtual {v11, v13, v6}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 104
    const-string v13, "-//W3C//DTD XMLSCHEMA 200102//EN"

    invoke-virtual {v11, v13, v6}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 105
    const-string v13, "jsp_2_0.xsd"

    invoke-virtual {v11, v13, v4}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 106
    const-string v13, "http://java.sun.com/xml/ns/j2ee/jsp_2_0.xsd"

    invoke-virtual {v11, v13, v4}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 107
    const-string v13, "jsp_2_1.xsd"

    invoke-virtual {v11, v13, v5}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 108
    const-string v13, "http://java.sun.com/xml/ns/javaee/jsp_2_1.xsd"

    invoke-virtual {v11, v13, v5}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 109
    const-string v13, "j2ee_1_4.xsd"

    invoke-virtual {v11, v13, v3}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 110
    const-string v13, "http://java.sun.com/xml/ns/j2ee/j2ee_1_4.xsd"

    invoke-virtual {v11, v13, v3}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 111
    const-string v13, "web-app_2_4.xsd"

    invoke-virtual {v11, v13, v7}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 112
    const-string v13, "http://java.sun.com/xml/ns/j2ee/web-app_2_4.xsd"

    invoke-virtual {v11, v13, v7}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 113
    const-string v13, "web-app_2_5.xsd"

    invoke-virtual {v11, v13, v8}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 114
    const-string v13, "http://java.sun.com/xml/ns/javaee/web-app_2_5.xsd"

    invoke-virtual {v11, v13, v8}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 115
    const-string v13, "xml.xsd"

    invoke-virtual {v11, v13, v12}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 116
    const-string v13, "http://www.w3.org/2001/xml.xsd"

    invoke-virtual {v11, v13, v12}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 117
    const-string v13, "datatypes.dtd"

    invoke-virtual {v11, v13, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 118
    const-string v13, "http://www.w3.org/2001/datatypes.dtd"

    invoke-virtual {v11, v13, v0}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 119
    const-string v13, "j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v11, v13, v9}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 120
    const-string v13, "http://www.ibm.com/webservices/xsd/j2ee_web_services_client_1_1.xsd"

    invoke-virtual {v11, v13, v9}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 121
    const-string v13, "javaee_web_services_client_1_2.xsd"

    invoke-virtual {v11, v13, v10}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 122
    const-string v13, "http://www.ibm.com/webservices/xsd/javaee_web_services_client_1_2.xsd"

    invoke-virtual {v11, v13, v10}, Lorg/mortbay/xml/XmlParser;->redirectEntity(Ljava/lang/String;Ljava/net/URL;)V

    .line 124
    return-object v11

    .line 85
    .end local v0    # "datatypesdtd":Ljava/net/URL;
    .end local v1    # "dtd22":Ljava/net/URL;
    .end local v2    # "dtd23":Ljava/net/URL;
    .end local v3    # "j2ee14xsd":Ljava/net/URL;
    .end local v4    # "jsp20xsd":Ljava/net/URL;
    .end local v5    # "jsp21xsd":Ljava/net/URL;
    .end local v6    # "schemadtd":Ljava/net/URL;
    .end local v7    # "webapp24xsd":Ljava/net/URL;
    .end local v8    # "webapp25xsd":Ljava/net/URL;
    .end local v9    # "webservice11xsd":Ljava/net/URL;
    .end local v10    # "webservice12xsd":Ljava/net/URL;
    .end local v12    # "xmlxsd":Ljava/net/URL;
    :cond_0
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_0

    .line 86
    .restart local v1    # "dtd22":Ljava/net/URL;
    :cond_1
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_1

    .line 87
    .restart local v2    # "dtd23":Ljava/net/URL;
    :cond_2
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_2

    .line 88
    .restart local v4    # "jsp20xsd":Ljava/net/URL;
    :cond_3
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_3

    .line 89
    .restart local v5    # "jsp21xsd":Ljava/net/URL;
    :cond_4
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_4

    .line 90
    .restart local v3    # "j2ee14xsd":Ljava/net/URL;
    :cond_5
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_5

    .line 91
    .restart local v7    # "webapp24xsd":Ljava/net/URL;
    :cond_6
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_6

    .line 92
    .restart local v8    # "webapp25xsd":Ljava/net/URL;
    :cond_7
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_7

    .line 93
    .restart local v6    # "schemadtd":Ljava/net/URL;
    :cond_8
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_8

    .line 94
    .restart local v12    # "xmlxsd":Ljava/net/URL;
    :cond_9
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_9

    .line 95
    .restart local v9    # "webservice11xsd":Ljava/net/URL;
    :cond_a
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_a

    .line 96
    .restart local v10    # "webservice12xsd":Ljava/net/URL;
    :cond_b
    sget-object v13, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$webapp$WebAppContext:Ljava/lang/Class;

    goto/16 :goto_b
.end method


# virtual methods
.method public configure(Ljava/lang/String;)V
    .locals 2
    .param p1, "webXml"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "config":Lorg/mortbay/xml/XmlParser$Node;
    iget-object v1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v1, p1}, Lorg/mortbay/xml/XmlParser;->parse(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 222
    invoke-virtual {p0, v0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initialize(Lorg/mortbay/xml/XmlParser$Node;)V

    .line 223
    return-void
.end method

.method public configureClassLoader()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 145
    return-void
.end method

.method public configureDefaults()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 151
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Cannot configure webapp after it is started"

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getDefaultsDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "defaultsDescriptor":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 159
    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 160
    .local v1, "dftResource":Lorg/mortbay/resource/Resource;
    if-nez v1, :cond_2

    .line 161
    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 162
    :cond_2
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public configureWebApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 173
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 174
    const-string v3, "Cannot configure webapp after it is started"

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->findWebXml()Ljava/net/URL;

    move-result-object v2

    .line 179
    .local v2, "webxml":Ljava/net/URL;
    if-eqz v2, :cond_2

    .line 180
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    .line 182
    :cond_2
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getOverrideDescriptor()Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "overrideDescriptor":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 185
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newSystemResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 186
    .local v0, "orideResource":Lorg/mortbay/resource/Resource;
    if-nez v0, :cond_3

    .line 187
    invoke-static {v1}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v0

    .line 188
    :cond_3
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/mortbay/xml/XmlParser;->setValidating(Z)V

    .line 189
    invoke-virtual {v0}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->configure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deconfigureWebApp()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v0

    iput-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 232
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 233
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 234
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 235
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 237
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    .line 238
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/SecurityHandler;->setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V

    .line 242
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    instance-of v0, v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v0

    check-cast v0, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->setErrorPages(Ljava/util/Map;)V

    .line 246
    :cond_1
    return-void
.end method

.method protected findWebXml()Ljava/net/URL;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, "descriptor":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 199
    invoke-static {v0}, Lorg/mortbay/resource/Resource;->newResource(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 200
    .local v1, "web":Lorg/mortbay/resource/Resource;
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_0

    .line 201
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 214
    .end local v1    # "web":Lorg/mortbay/resource/Resource;
    :goto_0
    return-object v3

    .line 204
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v3

    invoke-virtual {v3}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWebInf()Lorg/mortbay/resource/Resource;

    move-result-object v2

    .line 205
    .local v2, "web_inf":Lorg/mortbay/resource/Resource;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/mortbay/resource/Resource;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 208
    const-string v3, "web.xml"

    invoke-virtual {v2, v3}, Lorg/mortbay/resource/Resource;->addPath(Ljava/lang/String;)Lorg/mortbay/resource/Resource;

    move-result-object v1

    .line 209
    .restart local v1    # "web":Lorg/mortbay/resource/Resource;
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 210
    invoke-virtual {v1}, Lorg/mortbay/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v3

    goto :goto_0

    .line 211
    :cond_1
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "No WEB-INF/web.xml in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v4

    invoke-virtual {v4}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWar()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ". Serving files and default/dynamic servlets only"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 214
    .end local v1    # "web":Lorg/mortbay/resource/Resource;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected getJSPServletName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 934
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 936
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v2

    const-string v3, "test.jsp"

    invoke-virtual {v2, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/PathMap$Entry;

    move-result-object v0

    .line 937
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    .line 939
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mortbay/jetty/servlet/ServletHolder;

    .line 940
    .local v1, "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    invoke-virtual {v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    .line 943
    .end local v0    # "entry":Ljava/util/Map$Entry;
    .end local v1    # "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    :cond_0
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    return-object v2
.end method

.method public getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    return-object v0
.end method

.method protected initContextParam(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 390
    const-string v2, "param-name"

    invoke-virtual {p1, v2, v3, v4}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "name":Ljava/lang/String;
    const-string v2, "param-value"

    invoke-virtual {p1, v2, v3, v4}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 392
    .local v1, "value":Ljava/lang/String;
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "ContextParam: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 394
    :cond_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getInitParams()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method

.method protected initDisplayName(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 3
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 384
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setDisplayName(Ljava/lang/String;)V

    .line 385
    return-void
.end method

.method protected initDistributable(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 2
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 658
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v0

    .line 659
    .local v0, "wac":Lorg/mortbay/jetty/webapp/WebAppContext;
    invoke-virtual {v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->isDistributable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 660
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebAppContext;->setDistributable(Z)V

    .line 661
    :cond_0
    return-void
.end method

.method protected initErrorPage(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 716
    const-string v2, "error-code"

    invoke-virtual {p1, v2, v3, v4}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 717
    .local v0, "error":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 718
    :cond_0
    const-string v2, "exception-type"

    invoke-virtual {p1, v2, v3, v4}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 719
    :cond_1
    const-string v2, "location"

    invoke-virtual {p1, v2, v3, v4}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "location":Ljava/lang/String;
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    if-nez v2, :cond_2

    .line 722
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    .line 723
    :cond_2
    iget-object v2, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 724
    return-void
.end method

.method protected initFilter(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 10
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 400
    const-string v7, "filter-name"

    invoke-virtual {p1, v7, v8, v9}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 401
    .local v3, "name":Ljava/lang/String;
    iget-object v7, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v7, v3}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 402
    .local v1, "holder":Lorg/mortbay/jetty/servlet/FilterHolder;
    if-nez v1, :cond_0

    .line 404
    iget-object v7, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v7}, Lorg/mortbay/jetty/servlet/ServletHandler;->newFilterHolder()Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 405
    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 406
    iget-object v7, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    invoke-static {v7, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    .line 409
    :cond_0
    const-string v7, "filter-class"

    invoke-virtual {p1, v7, v8, v9}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "filter_class":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v1, v0}, Lorg/mortbay/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 413
    :cond_1
    const-string v7, "init-param"

    invoke-virtual {p1, v7}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 414
    .local v2, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 416
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/xml/XmlParser$Node;

    .line 417
    .local v4, "paramNode":Lorg/mortbay/xml/XmlParser$Node;
    const-string v7, "param-name"

    invoke-virtual {v4, v7, v8, v9}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 418
    .local v5, "pname":Ljava/lang/String;
    const-string v7, "param-value"

    invoke-virtual {v4, v7, v8, v9}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v6

    .line 419
    .local v6, "pvalue":Ljava/lang/String;
    invoke-virtual {v1, v5, v6}, Lorg/mortbay/jetty/servlet/FilterHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 422
    .end local v4    # "paramNode":Lorg/mortbay/xml/XmlParser$Node;
    .end local v5    # "pname":Ljava/lang/String;
    .end local v6    # "pvalue":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected initFilterMapping(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 12
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 427
    const-string v9, "filter-name"

    invoke-virtual {p1, v9, v10, v11}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "filter_name":Ljava/lang/String;
    new-instance v4, Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-direct {v4}, Lorg/mortbay/jetty/servlet/FilterMapping;-><init>()V

    .line 433
    .local v4, "mapping":Lorg/mortbay/jetty/servlet/FilterMapping;
    invoke-virtual {v4, v2}, Lorg/mortbay/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 435
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v8, "paths":Ljava/util/ArrayList;
    const-string v9, "url-pattern"

    invoke-virtual {p1, v9}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 437
    .local v3, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 439
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v9, v10, v11}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v7

    .line 440
    .local v7, "p":Ljava/lang/String;
    invoke-virtual {p0, v7}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 441
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 443
    .end local v7    # "p":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/servlet/FilterMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 446
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v6, "names":Ljava/util/ArrayList;
    const-string v9, "servlet-name"

    invoke-virtual {p1, v9}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 448
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 450
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v9, v10, v11}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    .line 451
    .local v5, "n":Ljava/lang/String;
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 453
    .end local v5    # "n":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v4, v9}, Lorg/mortbay/jetty/servlet/FilterMapping;->setServletNames([Ljava/lang/String;)V

    .line 456
    const/4 v1, 0x0

    .line 457
    .local v1, "dispatcher":I
    const-string v9, "dispatcher"

    invoke-virtual {p1, v9}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 458
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 460
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v9, v10, v11}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 461
    .local v0, "d":Ljava/lang/String;
    invoke-static {v0}, Lorg/mortbay/jetty/servlet/Dispatcher;->type(Ljava/lang/String;)I

    move-result v9

    or-int/2addr v1, v9

    .line 462
    goto :goto_2

    .line 463
    .end local v0    # "d":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4, v1}, Lorg/mortbay/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 465
    iget-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    invoke-static {v9, v4}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    .line 466
    return-void
.end method

.method protected initJspConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 12
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 738
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/mortbay/xml/XmlParser$Node;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 740
    invoke-virtual {p1, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 741
    .local v6, "o":Ljava/lang/Object;
    instance-of v9, v6, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v9, :cond_0

    const-string v10, "taglib"

    move-object v9, v6

    check-cast v9, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v9}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 742
    check-cast v6, Lorg/mortbay/xml/XmlParser$Node;

    .end local v6    # "o":Ljava/lang/Object;
    invoke-virtual {p0, v6}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V

    .line 738
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 747
    :cond_1
    const-string v9, "jsp-property-group"

    invoke-virtual {p1, v9}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 748
    .local v2, "iter":Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 749
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 751
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 752
    .local v0, "group":Lorg/mortbay/xml/XmlParser$Node;
    const-string v9, "url-pattern"

    invoke-virtual {v0, v9}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v3

    .line 753
    .local v3, "iter2":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 755
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/mortbay/xml/XmlParser$Node;

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v8

    .line 756
    .local v8, "url":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 757
    invoke-static {v7, v8}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 758
    .local v7, "paths":Ljava/lang/Object;
    goto :goto_1

    .line 761
    .end local v0    # "group":Lorg/mortbay/xml/XmlParser$Node;
    .end local v3    # "iter2":Ljava/util/Iterator;
    .end local v7    # "paths":Ljava/lang/Object;
    .end local v8    # "url":Ljava/lang/String;
    :cond_3
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_4

    .line 763
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getJSPServletName()Ljava/lang/String;

    move-result-object v4

    .line 764
    .local v4, "jspName":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 766
    new-instance v5, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v5}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 767
    .local v5, "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    invoke-virtual {v5, v4}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 768
    invoke-static {v7}, Lorg/mortbay/util/LazyList;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 769
    iget-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    invoke-static {v9, v5}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    .line 772
    .end local v4    # "jspName":Ljava/lang/String;
    .end local v5    # "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    :cond_4
    return-void
.end method

.method protected initListener(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 626
    const-string v4, "listener-class"

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1, v4, v5, v6}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, "className":Ljava/lang/String;
    const/4 v2, 0x0

    .line 630
    .local v2, "listener":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 631
    .local v3, "listenerClass":Ljava/lang/Class;
    invoke-virtual {p0, v3}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->newListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 632
    instance-of v4, v2, Ljava/util/EventListener;

    if-nez v4, :cond_0

    .line 634
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Not an EventListener: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 644
    .end local v2    # "listener":Ljava/lang/Object;
    .end local v3    # "listenerClass":Ljava/lang/Class;
    :goto_0
    return-void

    .line 637
    .restart local v2    # "listener":Ljava/lang/Object;
    .restart local v3    # "listenerClass":Ljava/lang/Class;
    :cond_0
    iget-object v4, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    invoke-static {v4, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 639
    .end local v2    # "listener":Ljava/lang/Object;
    .end local v3    # "listenerClass":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not instantiate listener "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected initLocaleEncodingList(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 703
    const-string v4, "locale-encoding-mapping"

    invoke-virtual {p1, v4}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 704
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 706
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/mortbay/xml/XmlParser$Node;

    .line 707
    .local v3, "mapping":Lorg/mortbay/xml/XmlParser$Node;
    const-string v4, "locale"

    invoke-virtual {v3, v4, v5, v6}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 708
    .local v2, "locale":Ljava/lang/String;
    const-string v4, "encoding"

    invoke-virtual {v3, v4, v5, v6}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 709
    .local v0, "encoding":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v4

    invoke-virtual {v4, v2, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 711
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "mapping":Lorg/mortbay/xml/XmlParser$Node;
    :cond_0
    return-void
.end method

.method protected initLoginConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 17
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 862
    const-string v15, "auth-method"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v9

    .line 863
    .local v9, "method":Lorg/mortbay/xml/XmlParser$Node;
    const/4 v1, 0x0

    .line 864
    .local v1, "_formAuthenticator":Lorg/mortbay/jetty/security/FormAuthenticator;
    if-eqz v9, :cond_0

    .line 866
    const/4 v2, 0x0

    .line 867
    .local v2, "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v8

    .line 868
    .local v8, "m":Ljava/lang/String;
    const-string v15, "FORM"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 869
    new-instance v1, Lorg/mortbay/jetty/security/FormAuthenticator;

    .end local v1    # "_formAuthenticator":Lorg/mortbay/jetty/security/FormAuthenticator;
    invoke-direct {v1}, Lorg/mortbay/jetty/security/FormAuthenticator;-><init>()V

    .restart local v1    # "_formAuthenticator":Lorg/mortbay/jetty/security/FormAuthenticator;
    move-object v2, v1

    .line 880
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v15

    invoke-virtual {v15}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v15

    invoke-virtual {v15, v2}, Lorg/mortbay/jetty/security/SecurityHandler;->setAuthenticator(Lorg/mortbay/jetty/security/Authenticator;)V

    .line 882
    .end local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    .end local v8    # "m":Ljava/lang/String;
    :cond_0
    const-string v15, "realm-name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v11

    .line 884
    .local v11, "name":Lorg/mortbay/xml/XmlParser$Node;
    invoke-static {}, Lorg/mortbay/jetty/handler/ContextHandler;->getCurrentContext()Lorg/mortbay/jetty/handler/ContextHandler$SContext;

    move-result-object v15

    invoke-virtual {v15}, Lorg/mortbay/jetty/handler/ContextHandler$SContext;->getContextHandler()Lorg/mortbay/jetty/handler/ContextHandler;

    move-result-object v15

    invoke-virtual {v15}, Lorg/mortbay/jetty/handler/ContextHandler;->getServer()Lorg/mortbay/jetty/Server;

    move-result-object v15

    invoke-virtual {v15}, Lorg/mortbay/jetty/Server;->getUserRealms()[Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v14

    .line 886
    .local v14, "realms":[Lorg/mortbay/jetty/security/UserRealm;
    if-nez v11, :cond_7

    const-string v13, "default"

    .line 888
    .local v13, "realm_name":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v15

    invoke-virtual {v15}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v15

    invoke-virtual {v15}, Lorg/mortbay/jetty/security/SecurityHandler;->getUserRealm()Lorg/mortbay/jetty/security/UserRealm;

    move-result-object v12

    .line 889
    .local v12, "realm":Lorg/mortbay/jetty/security/UserRealm;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-nez v12, :cond_8

    if-eqz v14, :cond_8

    array-length v15, v14

    if-ge v6, v15, :cond_8

    .line 891
    aget-object v15, v14, v6

    if-eqz v15, :cond_1

    aget-object v15, v14, v6

    invoke-interface {v15}, Lorg/mortbay/jetty/security/UserRealm;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 892
    aget-object v12, v14, v6

    .line 889
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 870
    .end local v6    # "i":I
    .end local v11    # "name":Lorg/mortbay/xml/XmlParser$Node;
    .end local v12    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    .end local v13    # "realm_name":Ljava/lang/String;
    .end local v14    # "realms":[Lorg/mortbay/jetty/security/UserRealm;
    .restart local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    .restart local v8    # "m":Ljava/lang/String;
    :cond_2
    const-string v15, "BASIC"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 871
    new-instance v2, Lorg/mortbay/jetty/security/BasicAuthenticator;

    .end local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    invoke-direct {v2}, Lorg/mortbay/jetty/security/BasicAuthenticator;-><init>()V

    .restart local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    goto :goto_0

    .line 872
    :cond_3
    const-string v15, "DIGEST"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 873
    new-instance v2, Lorg/mortbay/jetty/security/DigestAuthenticator;

    .end local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    invoke-direct {v2}, Lorg/mortbay/jetty/security/DigestAuthenticator;-><init>()V

    .restart local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    goto :goto_0

    .line 874
    :cond_4
    const-string v15, "CLIENT_CERT"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 875
    new-instance v2, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    .end local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    invoke-direct {v2}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    .restart local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    goto :goto_0

    .line 876
    :cond_5
    const-string v15, "CLIENT-CERT"

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 877
    new-instance v2, Lorg/mortbay/jetty/security/ClientCertAuthenticator;

    .end local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    invoke-direct {v2}, Lorg/mortbay/jetty/security/ClientCertAuthenticator;-><init>()V

    .restart local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    goto/16 :goto_0

    .line 879
    :cond_6
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "UNKNOWN AUTH METHOD: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    .end local v2    # "authenticator":Lorg/mortbay/jetty/security/Authenticator;
    .end local v8    # "m":Ljava/lang/String;
    .restart local v11    # "name":Lorg/mortbay/xml/XmlParser$Node;
    .restart local v14    # "realms":[Lorg/mortbay/jetty/security/UserRealm;
    :cond_7
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_1

    .line 895
    .restart local v6    # "i":I
    .restart local v12    # "realm":Lorg/mortbay/jetty/security/UserRealm;
    .restart local v13    # "realm_name":Ljava/lang/String;
    :cond_8
    if-nez v12, :cond_a

    .line 897
    new-instance v15, Ljava/lang/StringBuffer;

    invoke-direct {v15}, Ljava/lang/StringBuffer;-><init>()V

    const-string v16, "Unknown realm: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 898
    .local v10, "msg":Ljava/lang/String;
    invoke-static {v10}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 904
    .end local v10    # "msg":Ljava/lang/String;
    :goto_3
    const-string v15, "form-login-config"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v5

    .line 905
    .local v5, "formConfig":Lorg/mortbay/xml/XmlParser$Node;
    if-eqz v5, :cond_9

    .line 907
    if-nez v1, :cond_b

    .line 908
    const-string v15, "FORM Authentication miss-configured"

    invoke-static {v15}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 922
    :cond_9
    :goto_4
    return-void

    .line 901
    .end local v5    # "formConfig":Lorg/mortbay/xml/XmlParser$Node;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v15

    invoke-virtual {v15}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v15

    invoke-virtual {v15, v12}, Lorg/mortbay/jetty/security/SecurityHandler;->setUserRealm(Lorg/mortbay/jetty/security/UserRealm;)V

    goto :goto_3

    .line 911
    .restart local v5    # "formConfig":Lorg/mortbay/xml/XmlParser$Node;
    :cond_b
    const-string v15, "form-login-page"

    invoke-virtual {v5, v15}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v7

    .line 912
    .local v7, "loginPage":Lorg/mortbay/xml/XmlParser$Node;
    if-eqz v7, :cond_c

    .line 913
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v7, v15, v0}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lorg/mortbay/jetty/security/FormAuthenticator;->setLoginPage(Ljava/lang/String;)V

    .line 914
    :cond_c
    const-string v15, "form-error-page"

    invoke-virtual {v5, v15}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v4

    .line 915
    .local v4, "errorPage":Lorg/mortbay/xml/XmlParser$Node;
    if-eqz v4, :cond_9

    .line 917
    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v4, v15, v0}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 918
    .local v3, "ep":Ljava/lang/String;
    invoke-virtual {v1, v3}, Lorg/mortbay/jetty/security/FormAuthenticator;->setErrorPage(Ljava/lang/String;)V

    goto :goto_4
.end method

.method protected initMimeConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 677
    const-string v2, "extension"

    invoke-virtual {p1, v2, v4, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 679
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 680
    :cond_0
    const-string v2, "mime-type"

    invoke-virtual {p1, v2, v4, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 681
    .local v1, "mimeType":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/mortbay/jetty/MimeTypes;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/mortbay/jetty/MimeTypes;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    return-void
.end method

.method protected initSecurityConstraint(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 22
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 777
    new-instance v17, Lorg/mortbay/jetty/security/Constraint;

    invoke-direct/range {v17 .. v17}, Lorg/mortbay/jetty/security/Constraint;-><init>()V

    .line 781
    .local v17, "scBase":Lorg/mortbay/jetty/security/Constraint;
    :try_start_0
    const-string v19, "auth-constraint"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v3

    .line 783
    .local v3, "auths":Lorg/mortbay/xml/XmlParser$Node;
    if-eqz v3, :cond_1

    .line 785
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/Constraint;->setAuthenticate(Z)V

    .line 787
    const-string v19, "role-name"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 788
    .local v8, "iter":Ljava/util/Iterator;
    const/4 v15, 0x0

    .line 789
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    .line 791
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/mortbay/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v14

    .line 792
    .local v14, "role":Ljava/lang/String;
    invoke-static {v15, v14}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .line 793
    .local v15, "roles":Ljava/lang/Object;
    goto :goto_0

    .line 794
    .end local v14    # "role":Ljava/lang/String;
    .end local v15    # "roles":Ljava/lang/Object;
    :cond_0
    invoke-static {v15}, Lorg/mortbay/util/LazyList;->toStringArray(Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 797
    .end local v8    # "iter":Ljava/util/Iterator;
    :cond_1
    const-string v19, "user-data-constraint"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v5

    .line 798
    .local v5, "data":Lorg/mortbay/xml/XmlParser$Node;
    if-eqz v5, :cond_3

    .line 800
    const-string v19, "transport-guarantee"

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v5

    .line 801
    const/16 v19, 0x0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    .line 802
    .local v7, "guarantee":Ljava/lang/String;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "NONE"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 803
    :cond_2
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    .line 814
    .end local v7    # "guarantee":Ljava/lang/String;
    :cond_3
    :goto_1
    const-string v19, "web-resource-collection"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 815
    .restart local v8    # "iter":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 817
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/mortbay/xml/XmlParser$Node;

    .line 818
    .local v4, "collection":Lorg/mortbay/xml/XmlParser$Node;
    const-string v19, "web-resource-name"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v4, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v13

    .line 819
    .local v13, "name":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lorg/mortbay/jetty/security/Constraint;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/mortbay/jetty/security/Constraint;

    .line 820
    .local v16, "sc":Lorg/mortbay/jetty/security/Constraint;
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lorg/mortbay/jetty/security/Constraint;->setName(Ljava/lang/String;)V

    .line 823
    const-string v19, "url-pattern"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v9

    .line 824
    .local v9, "iter2":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 826
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/mortbay/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v18

    .line 827
    .local v18, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 829
    const-string v19, "http-method"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v10

    .line 830
    .local v10, "iter3":Ljava/util/Iterator;
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_a

    .line 832
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 834
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/mortbay/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v12

    .line 835
    .local v12, "method":Ljava/lang/String;
    new-instance v11, Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-direct {v11}, Lorg/mortbay/jetty/security/ConstraintMapping;-><init>()V

    .line 836
    .local v11, "mapping":Lorg/mortbay/jetty/security/ConstraintMapping;
    invoke-virtual {v11, v12}, Lorg/mortbay/jetty/security/ConstraintMapping;->setMethod(Ljava/lang/String;)V

    .line 837
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 838
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/security/ConstraintMapping;->setConstraint(Lorg/mortbay/jetty/security/Constraint;)V

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 852
    .end local v3    # "auths":Lorg/mortbay/xml/XmlParser$Node;
    .end local v4    # "collection":Lorg/mortbay/xml/XmlParser$Node;
    .end local v5    # "data":Lorg/mortbay/xml/XmlParser$Node;
    .end local v8    # "iter":Ljava/util/Iterator;
    .end local v9    # "iter2":Ljava/util/Iterator;
    .end local v10    # "iter3":Ljava/util/Iterator;
    .end local v11    # "mapping":Lorg/mortbay/jetty/security/ConstraintMapping;
    .end local v12    # "method":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v16    # "sc":Lorg/mortbay/jetty/security/Constraint;
    .end local v18    # "url":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 854
    .local v6, "e":Ljava/lang/CloneNotSupportedException;
    invoke-static {v6}, Lorg/mortbay/log/Log;->warn(Ljava/lang/Throwable;)V

    .line 857
    .end local v6    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_6
    return-void

    .line 804
    .restart local v3    # "auths":Lorg/mortbay/xml/XmlParser$Node;
    .restart local v5    # "data":Lorg/mortbay/xml/XmlParser$Node;
    .restart local v7    # "guarantee":Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v19, "INTEGRAL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 805
    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 806
    :cond_8
    const-string v19, "CONFIDENTIAL"

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 807
    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 810
    :cond_9
    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const-string v20, "Unknown user-data-constraint:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 811
    const/16 v19, 0x2

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 844
    .end local v7    # "guarantee":Ljava/lang/String;
    .restart local v4    # "collection":Lorg/mortbay/xml/XmlParser$Node;
    .restart local v8    # "iter":Ljava/util/Iterator;
    .restart local v9    # "iter2":Ljava/util/Iterator;
    .restart local v10    # "iter3":Ljava/util/Iterator;
    .restart local v13    # "name":Ljava/lang/String;
    .restart local v16    # "sc":Lorg/mortbay/jetty/security/Constraint;
    .restart local v18    # "url":Ljava/lang/String;
    :cond_a
    new-instance v11, Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-direct {v11}, Lorg/mortbay/jetty/security/ConstraintMapping;-><init>()V

    .line 845
    .restart local v11    # "mapping":Lorg/mortbay/jetty/security/ConstraintMapping;
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 846
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/mortbay/jetty/security/ConstraintMapping;->setConstraint(Lorg/mortbay/jetty/security/Constraint;)V

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v11}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected initSecurityRole(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 0
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 926
    return-void
.end method

.method protected initServlet(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 28
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 479
    const-string v25, "id"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 482
    .local v8, "id":Ljava/lang/String;
    const-string v25, "servlet-name"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v22

    .line 483
    .local v22, "servlet_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v6

    .line 484
    .local v6, "holder":Lorg/mortbay/jetty/servlet/ServletHolder;
    if-nez v6, :cond_0

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/mortbay/jetty/servlet/ServletHandler;->newServletHolder()Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v6

    .line 487
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-static {v0, v6}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    .line 492
    :cond_0
    const-string v25, "init-param"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v7

    .line 493
    .local v7, "iParamsIter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1

    .line 495
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/mortbay/xml/XmlParser$Node;

    .line 496
    .local v11, "paramNode":Lorg/mortbay/xml/XmlParser$Node;
    const-string v25, "param-name"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 497
    .local v12, "pname":Ljava/lang/String;
    const-string v25, "param-value"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v11, v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v13

    .line 498
    .local v13, "pvalue":Ljava/lang/String;
    invoke-virtual {v6, v12, v13}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 501
    .end local v11    # "paramNode":Lorg/mortbay/xml/XmlParser$Node;
    .end local v12    # "pname":Ljava/lang/String;
    .end local v13    # "pvalue":Ljava/lang/String;
    :cond_1
    const-string v25, "servlet-class"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v21

    .line 504
    .local v21, "servlet_class":Ljava/lang/String;
    if-eqz v8, :cond_3

    const-string v25, "jsp"

    move-object/from16 v0, v25

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 506
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletName:Ljava/lang/String;

    .line 507
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    .line 510
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lorg/mortbay/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    .line 511
    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_hasJSP:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 519
    :goto_1
    const-string v25, "scratchdir"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    if-nez v25, :cond_3

    .line 521
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/mortbay/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v24

    .line 522
    .local v24, "tmp":Ljava/io/File;
    new-instance v19, Ljava/io/File;

    const-string v25, "jsp"

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 523
    .local v19, "scratch":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->exists()Z

    move-result v25

    if-nez v25, :cond_2

    .line 524
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->mkdir()Z

    .line 525
    :cond_2
    const-string v25, "scratchdir"

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v6, v0, v1}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    const-string v25, "?"

    const-string v26, "classpath"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 529
    invoke-virtual/range {p0 .. p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/mortbay/jetty/webapp/WebAppContext;->getClassPath()Ljava/lang/String;

    move-result-object v4

    .line 530
    .local v4, "classpath":Ljava/lang/String;
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v26, "classpath="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 531
    if-eqz v4, :cond_3

    .line 532
    const-string v25, "classpath"

    move-object/from16 v0, v25

    invoke-virtual {v6, v0, v4}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    .end local v4    # "classpath":Ljava/lang/String;
    .end local v19    # "scratch":Ljava/io/File;
    .end local v24    # "tmp":Ljava/io/File;
    :cond_3
    if-eqz v21, :cond_4

    .line 537
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 541
    :cond_4
    const-string v25, "jsp-file"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    .line 542
    .local v9, "jsp_file":Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 544
    invoke-virtual {v6, v9}, Lorg/mortbay/jetty/servlet/ServletHolder;->setForcedPath(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 549
    :cond_5
    const-string v25, "load-on-startup"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v23

    .line 550
    .local v23, "startup":Lorg/mortbay/xml/XmlParser$Node;
    if-eqz v23, :cond_6

    .line 552
    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    .line 553
    .local v17, "s":Ljava/lang/String;
    const-string v25, "t"

    move-object/from16 v0, v17

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_8

    .line 555
    const-string v25, "Deprecated boolean load-on-startup.  Please use integer"

    invoke-static/range {v25 .. v25}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 556
    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-virtual {v6, v0}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitOrder(I)V

    .line 575
    .end local v17    # "s":Ljava/lang/String;
    :cond_6
    :goto_2
    const-string v25, "security-role-ref"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v18

    .line 576
    .local v18, "sRefsIter":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_b

    .line 578
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/mortbay/xml/XmlParser$Node;

    .line 579
    .local v20, "securityRef":Lorg/mortbay/xml/XmlParser$Node;
    const-string v25, "role-name"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v15

    .line 580
    .local v15, "roleName":Ljava/lang/String;
    const-string v25, "role-link"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v14

    .line 581
    .local v14, "roleLink":Ljava/lang/String;
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_a

    if-eqz v14, :cond_a

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_a

    .line 583
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v25

    if-eqz v25, :cond_7

    .line 584
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v26, "link role "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, " to "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, " for "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    .line 585
    :cond_7
    invoke-virtual {v6, v15, v14}, Lorg/mortbay/jetty/servlet/ServletHolder;->setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 513
    .end local v9    # "jsp_file":Ljava/lang/String;
    .end local v14    # "roleLink":Ljava/lang/String;
    .end local v15    # "roleName":Ljava/lang/String;
    .end local v18    # "sRefsIter":Ljava/util/Iterator;
    .end local v20    # "securityRef":Lorg/mortbay/xml/XmlParser$Node;
    .end local v23    # "startup":Lorg/mortbay/xml/XmlParser$Node;
    :catch_0
    move-exception v5

    .line 515
    .local v5, "e":Ljava/lang/ClassNotFoundException;
    const-string v25, "NO JSP Support for {}, did not find {}"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/mortbay/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/mortbay/log/Log;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 516
    const/16 v25, 0x0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_hasJSP:Z

    .line 517
    const-string v21, "org.mortbay.servlet.NoJspServlet"

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_jspServletClass:Ljava/lang/String;

    goto/16 :goto_1

    .line 560
    .end local v5    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v9    # "jsp_file":Ljava/lang/String;
    .restart local v17    # "s":Ljava/lang/String;
    .restart local v23    # "startup":Lorg/mortbay/xml/XmlParser$Node;
    :cond_8
    const/4 v10, 0x0

    .line 563
    .local v10, "order":I
    if-eqz v17, :cond_9

    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_9

    .line 564
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v10

    .line 571
    :cond_9
    :goto_4
    invoke-virtual {v6, v10}, Lorg/mortbay/jetty/servlet/ServletHolder;->setInitOrder(I)V

    goto/16 :goto_2

    .line 566
    :catch_1
    move-exception v5

    .line 568
    .local v5, "e":Ljava/lang/Exception;
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v26, "Cannot parse load-on-startup "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, ". Please use integer"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 569
    invoke-static {v5}, Lorg/mortbay/log/Log;->ignore(Ljava/lang/Throwable;)V

    goto :goto_4

    .line 589
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v10    # "order":I
    .end local v17    # "s":Ljava/lang/String;
    .restart local v14    # "roleLink":Ljava/lang/String;
    .restart local v15    # "roleName":Ljava/lang/String;
    .restart local v18    # "sRefsIter":Ljava/util/Iterator;
    .restart local v20    # "securityRef":Lorg/mortbay/xml/XmlParser$Node;
    :cond_a
    new-instance v25, Ljava/lang/StringBuffer;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuffer;-><init>()V

    const-string v26, "Ignored invalid security-role-ref element: servlet-name="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual {v6}, Lorg/mortbay/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    const-string v26, ", "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 593
    .end local v14    # "roleLink":Ljava/lang/String;
    .end local v15    # "roleName":Ljava/lang/String;
    .end local v20    # "securityRef":Lorg/mortbay/xml/XmlParser$Node;
    :cond_b
    const-string v25, "run-as"

    move-object/from16 v0, p1

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v16

    .line 594
    .local v16, "run_as":Lorg/mortbay/xml/XmlParser$Node;
    if-eqz v16, :cond_c

    .line 596
    const-string v25, "role-name"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, v16

    move-object/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v15

    .line 597
    .restart local v15    # "roleName":Ljava/lang/String;
    if-eqz v15, :cond_c

    .line 598
    invoke-virtual {v6, v15}, Lorg/mortbay/jetty/servlet/ServletHolder;->setRunAs(Ljava/lang/String;)V

    .line 601
    .end local v15    # "roleName":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method protected initServletMapping(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 8
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 606
    const-string v5, "servlet-name"

    invoke-virtual {p1, v5, v6, v7}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "servlet_name":Ljava/lang/String;
    new-instance v1, Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-direct {v1}, Lorg/mortbay/jetty/servlet/ServletMapping;-><init>()V

    .line 608
    .local v1, "mapping":Lorg/mortbay/jetty/servlet/ServletMapping;
    invoke-virtual {v1, v4}, Lorg/mortbay/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 610
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 611
    .local v3, "paths":Ljava/util/ArrayList;
    const-string v5, "url-pattern"

    invoke-virtual {p1, v5}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 612
    .local v0, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 614
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/mortbay/xml/XmlParser$Node;

    invoke-virtual {v5, v6, v7}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 615
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 618
    .end local v2    # "p":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Lorg/mortbay/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 620
    iget-object v5, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    invoke-static {v5, v1}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    .line 621
    return-void
.end method

.method protected initSessionConfig(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 4
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    .line 666
    const-string v2, "session-timeout"

    invoke-virtual {p1, v2}, Lorg/mortbay/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/mortbay/xml/XmlParser$Node;

    move-result-object v0

    .line 667
    .local v0, "tNode":Lorg/mortbay/xml/XmlParser$Node;
    if-eqz v0, :cond_0

    .line 669
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 670
    .local v1, "timeout":I
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/mortbay/jetty/servlet/SessionHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/mortbay/jetty/servlet/SessionHandler;->getSessionManager()Lorg/mortbay/jetty/SessionManager;

    move-result-object v2

    mul-int/lit8 v3, v1, 0x3c

    invoke-interface {v2, v3}, Lorg/mortbay/jetty/SessionManager;->setMaxInactiveInterval(I)V

    .line 672
    .end local v1    # "timeout":I
    :cond_0
    return-void
.end method

.method protected initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 729
    const-string v2, "taglib-uri"

    invoke-virtual {p1, v2, v3, v4}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 730
    .local v1, "uri":Ljava/lang/String;
    const-string v2, "taglib-location"

    invoke-virtual {p1, v2, v3, v4}, Lorg/mortbay/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "location":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/mortbay/jetty/webapp/WebAppContext;->setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    return-void
.end method

.method protected initWebXmlElement(Ljava/lang/String;Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 2
    .param p1, "element"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    const-string v0, "display-name"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initDisplayName(Lorg/mortbay/xml/XmlParser$Node;)V

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 330
    :cond_1
    const-string v0, "description"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    const-string v0, "context-param"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initContextParam(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 334
    :cond_2
    const-string v0, "servlet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 335
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initServlet(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 336
    :cond_3
    const-string v0, "servlet-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initServletMapping(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 338
    :cond_4
    const-string v0, "session-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSessionConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 340
    :cond_5
    const-string v0, "mime-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 341
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initMimeConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 342
    :cond_6
    const-string v0, "welcome-file-list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 343
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initWelcomeFileList(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 344
    :cond_7
    const-string v0, "locale-encoding-mapping-list"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 345
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initLocaleEncodingList(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 346
    :cond_8
    const-string v0, "error-page"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 347
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initErrorPage(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 348
    :cond_9
    const-string v0, "taglib"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 349
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initTagLib(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 350
    :cond_a
    const-string v0, "jsp-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 351
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initJspConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto :goto_0

    .line 352
    :cond_b
    const-string v0, "resource-ref"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 354
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No implementation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 357
    :cond_c
    const-string v0, "security-constraint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 358
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSecurityConstraint(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 359
    :cond_d
    const-string v0, "login-config"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 360
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initLoginConfig(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 361
    :cond_e
    const-string v0, "security-role"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 362
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initSecurityRole(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 363
    :cond_f
    const-string v0, "filter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 364
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initFilter(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 365
    :cond_10
    const-string v0, "filter-mapping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 366
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initFilterMapping(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 367
    :cond_11
    const-string v0, "listener"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 368
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initListener(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 369
    :cond_12
    const-string v0, "distributable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 370
    invoke-virtual {p0, p2}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initDistributable(Lorg/mortbay/xml/XmlParser$Node;)V

    goto/16 :goto_0

    .line 373
    :cond_13
    invoke-static {}, Lorg/mortbay/log/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    const-string v0, "Element {} not handled in {}"

    invoke-static {v0, p1, p0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 376
    invoke-virtual {p2}, Lorg/mortbay/xml/XmlParser$Node;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/mortbay/log/Log;->debug(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected initWelcomeFileList(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "node"    # Lorg/mortbay/xml/XmlParser$Node;

    .prologue
    const/4 v4, 0x0

    .line 687
    iget-boolean v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    if-eqz v3, :cond_0

    .line 688
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    .line 690
    :cond_0
    iput-boolean v4, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_defaultWelcomeFileList:Z

    .line 691
    const-string v3, "welcome-file"

    invoke-virtual {p1, v3}, Lorg/mortbay/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 692
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 694
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    .line 695
    .local v0, "indexNode":Lorg/mortbay/xml/XmlParser$Node;
    const/4 v3, 0x1

    invoke-virtual {v0, v4, v3}, Lorg/mortbay/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 696
    .local v2, "welcome":Ljava/lang/String;
    iget-object v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    invoke-static {v3, v2}, Lorg/mortbay/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    goto :goto_0

    .line 698
    .end local v0    # "indexNode":Lorg/mortbay/xml/XmlParser$Node;
    .end local v2    # "welcome":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected initialize(Lorg/mortbay/xml/XmlParser$Node;)V
    .locals 11
    .param p1, "config"    # Lorg/mortbay/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getServletHandler()Lorg/mortbay/jetty/servlet/ServletHandler;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    .line 253
    iget-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilters()[Lorg/mortbay/jetty/servlet/FilterHolder;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    .line 254
    iget-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/mortbay/jetty/servlet/FilterMapping;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    .line 255
    iget-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServlets()[Lorg/mortbay/jetty/servlet/ServletHolder;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    .line 256
    iget-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/mortbay/jetty/servlet/ServletMapping;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    .line 258
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    .line 259
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    .line 260
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/security/SecurityHandler;->getConstraintMappings()[Lorg/mortbay/jetty/security/ConstraintMapping;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    .line 262
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v8

    instance-of v8, v8, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v8

    check-cast v8, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    invoke-virtual {v8}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->getErrorPages()Ljava/util/Map;

    move-result-object v8

    :goto_0
    iput-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    .line 265
    const-string v8, "version"

    const-string v9, "DTD"

    invoke-virtual {p1, v8, v9}, Lorg/mortbay/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 266
    .local v7, "version":Ljava/lang/String;
    const-string v8, "2.5"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 267
    const/16 v8, 0x19

    iput v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    .line 278
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/mortbay/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 279
    .local v3, "iter":Ljava/util/Iterator;
    const/4 v5, 0x0

    .line 280
    .local v5, "node":Lorg/mortbay/xml/XmlParser$Node;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 284
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 285
    .local v6, "o":Ljava/lang/Object;
    instance-of v8, v6, Lorg/mortbay/xml/XmlParser$Node;

    if-eqz v8, :cond_1

    .line 287
    move-object v0, v6

    check-cast v0, Lorg/mortbay/xml/XmlParser$Node;

    move-object v5, v0

    .line 288
    invoke-virtual {v5}, Lorg/mortbay/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    .line 289
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->initWebXmlElement(Ljava/lang/String;Lorg/mortbay/xml/XmlParser$Node;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    .line 291
    .end local v4    # "name":Ljava/lang/String;
    .end local v6    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 293
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    throw v2

    .line 262
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v5    # "node":Lorg/mortbay/xml/XmlParser$Node;
    .end local v7    # "version":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 268
    .restart local v7    # "version":Ljava/lang/String;
    :cond_3
    const-string v8, "2.4"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 269
    const/16 v8, 0x18

    iput v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    goto :goto_1

    .line 270
    :cond_4
    const-string v8, "DTD"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 272
    const/16 v8, 0x17

    iput v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    .line 273
    iget-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_xmlParser:Lorg/mortbay/xml/XmlParser;

    invoke-virtual {v8}, Lorg/mortbay/xml/XmlParser;->getDTD()Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "dtd":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v8, "web-app_2_2"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    if-ltz v8, :cond_0

    .line 275
    const/16 v8, 0x16

    iput v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_version:I

    goto :goto_1

    .line 295
    .end local v1    # "dtd":Ljava/lang/String;
    .restart local v3    # "iter":Ljava/util/Iterator;
    .restart local v5    # "node":Lorg/mortbay/xml/XmlParser$Node;
    :catch_1
    move-exception v2

    .line 297
    .local v2, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "Configuration problem at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, ": "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/mortbay/log/Log;->warn(Ljava/lang/String;)V

    .line 298
    invoke-static {v2}, Lorg/mortbay/log/Log;->debug(Ljava/lang/Throwable;)V

    .line 299
    new-instance v8, Ljavax/servlet/UnavailableException;

    const-string v9, "Configuration problem"

    invoke-direct {v8, v9}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 303
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_5
    iget-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v10, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filters:Ljava/lang/Object;

    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    if-nez v8, :cond_7

    const-string v8, "org.mortbay.jetty.servlet.FilterHolder"

    invoke-static {v8}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    :goto_3
    invoke-static {v10, v8}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/mortbay/jetty/servlet/FilterHolder;

    check-cast v8, [Lorg/mortbay/jetty/servlet/FilterHolder;

    invoke-virtual {v9, v8}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilters([Lorg/mortbay/jetty/servlet/FilterHolder;)V

    .line 304
    iget-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v10, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_filterMappings:Ljava/lang/Object;

    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    if-nez v8, :cond_8

    const-string v8, "org.mortbay.jetty.servlet.FilterMapping"

    invoke-static {v8}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    :goto_4
    invoke-static {v10, v8}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/mortbay/jetty/servlet/FilterMapping;

    check-cast v8, [Lorg/mortbay/jetty/servlet/FilterMapping;

    invoke-virtual {v9, v8}, Lorg/mortbay/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/mortbay/jetty/servlet/FilterMapping;)V

    .line 305
    iget-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v10, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servlets:Ljava/lang/Object;

    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    if-nez v8, :cond_9

    const-string v8, "org.mortbay.jetty.servlet.ServletHolder"

    invoke-static {v8}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    :goto_5
    invoke-static {v10, v8}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/mortbay/jetty/servlet/ServletHolder;

    check-cast v8, [Lorg/mortbay/jetty/servlet/ServletHolder;

    invoke-virtual {v9, v8}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServlets([Lorg/mortbay/jetty/servlet/ServletHolder;)V

    .line 306
    iget-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletHandler:Lorg/mortbay/jetty/servlet/ServletHandler;

    iget-object v10, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_servletMappings:Ljava/lang/Object;

    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    if-nez v8, :cond_a

    const-string v8, "org.mortbay.jetty.servlet.ServletMapping"

    invoke-static {v8}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    :goto_6
    invoke-static {v10, v8}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/mortbay/jetty/servlet/ServletMapping;

    check-cast v8, [Lorg/mortbay/jetty/servlet/ServletMapping;

    invoke-virtual {v9, v8}, Lorg/mortbay/jetty/servlet/ServletHandler;->setServletMappings([Lorg/mortbay/jetty/servlet/ServletMapping;)V

    .line 308
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v9

    iget-object v10, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_listeners:Ljava/lang/Object;

    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$util$EventListener:Ljava/lang/Class;

    if-nez v8, :cond_b

    const-string v8, "java.util.EventListener"

    invoke-static {v8}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$util$EventListener:Ljava/lang/Class;

    :goto_7
    invoke-static {v10, v8}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/util/EventListener;

    check-cast v8, [Ljava/util/EventListener;

    invoke-virtual {v9, v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->setEventListeners([Ljava/util/EventListener;)V

    .line 309
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v9

    iget-object v10, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_welcomeFiles:Ljava/lang/Object;

    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    if-nez v8, :cond_c

    const-string v8, "java.lang.String"

    invoke-static {v8}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    :goto_8
    invoke-static {v10, v8}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v9, v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/mortbay/jetty/security/SecurityHandler;

    move-result-object v9

    iget-object v10, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_constraintMappings:Ljava/lang/Object;

    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

    if-nez v8, :cond_d

    const-string v8, "org.mortbay.jetty.security.ConstraintMapping"

    invoke-static {v8}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    sput-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

    :goto_9
    invoke-static {v10, v8}, Lorg/mortbay/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/mortbay/jetty/security/ConstraintMapping;

    check-cast v8, [Lorg/mortbay/jetty/security/ConstraintMapping;

    invoke-virtual {v9, v8}, Lorg/mortbay/jetty/security/SecurityHandler;->setConstraintMappings([Lorg/mortbay/jetty/security/ConstraintMapping;)V

    .line 312
    iget-object v8, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    if-eqz v8, :cond_6

    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v8

    instance-of v8, v8, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    if-eqz v8, :cond_6

    .line 313
    invoke-virtual {p0}, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->getWebAppContext()Lorg/mortbay/jetty/webapp/WebAppContext;

    move-result-object v8

    invoke-virtual {v8}, Lorg/mortbay/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/mortbay/jetty/handler/ErrorHandler;

    move-result-object v8

    check-cast v8, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;

    iget-object v9, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_errorPages:Ljava/util/Map;

    invoke-virtual {v8, v9}, Lorg/mortbay/jetty/servlet/ErrorPageErrorHandler;->setErrorPages(Ljava/util/Map;)V

    .line 315
    :cond_6
    return-void

    .line 303
    :cond_7
    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterHolder:Ljava/lang/Class;

    goto/16 :goto_3

    .line 304
    :cond_8
    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$FilterMapping:Ljava/lang/Class;

    goto/16 :goto_4

    .line 305
    :cond_9
    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletHolder:Ljava/lang/Class;

    goto/16 :goto_5

    .line 306
    :cond_a
    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$servlet$ServletMapping:Ljava/lang/Class;

    goto/16 :goto_6

    .line 308
    :cond_b
    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$util$EventListener:Ljava/lang/Class;

    goto :goto_7

    .line 309
    :cond_c
    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_8

    .line 310
    :cond_d
    sget-object v8, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->class$org$mortbay$jetty$security$ConstraintMapping:Ljava/lang/Class;

    goto :goto_9
.end method

.method protected newListenerInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "clazz"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 650
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 471
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    .line 473
    .end local p1    # "p":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public setWebAppContext(Lorg/mortbay/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/mortbay/jetty/webapp/WebAppContext;

    .prologue
    .line 130
    iput-object p1, p0, Lorg/mortbay/jetty/webapp/WebXmlConfiguration;->_context:Lorg/mortbay/jetty/webapp/WebAppContext;

    .line 131
    return-void
.end method
