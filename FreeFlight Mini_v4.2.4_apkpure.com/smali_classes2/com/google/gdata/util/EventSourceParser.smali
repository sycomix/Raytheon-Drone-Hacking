.class public Lcom/google/gdata/util/EventSourceParser;
.super Lcom/google/gdata/util/XmlParser;
.source "EventSourceParser.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/google/gdata/util/EventSourceParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/util/EventSourceParser;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rootHandler"    # Lcom/google/gdata/util/XmlParser$ElementHandler;
    .param p2, "rootNamespace"    # Ljava/lang/String;
    .param p3, "rootElementName"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/google/gdata/util/XmlParser;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/google/gdata/util/EventSourceParser;->rootHandler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 39
    iput-object p2, p0, Lcom/google/gdata/util/EventSourceParser;->rootNamespace:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/google/gdata/util/EventSourceParser;->rootElementName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public parse(Lcom/google/gdata/data/XmlEventSource;)V
    .locals 5
    .param p1, "source"    # Lcom/google/gdata/data/XmlEventSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 45
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/gdata/data/XmlEventSource;->parse(Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Lorg/xml/sax/SAXException;
    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object v1

    .line 48
    .local v1, "rootException":Ljava/lang/Exception;
    instance-of v2, v1, Lcom/google/gdata/util/ParseException;

    if-eqz v2, :cond_0

    .line 49
    check-cast v1, Lcom/google/gdata/util/ParseException;

    .end local v1    # "rootException":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lcom/google/gdata/util/EventSourceParser;->throwParseException(Lcom/google/gdata/util/ParseException;)V

    goto :goto_0

    .line 50
    .restart local v1    # "rootException":Ljava/lang/Exception;
    :cond_0
    instance-of v2, v1, Ljava/io/IOException;

    if-eqz v2, :cond_1

    .line 51
    sget-object v2, Lcom/google/gdata/util/EventSourceParser;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v2, v3, v4, v0}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    check-cast v1, Ljava/io/IOException;

    .end local v1    # "rootException":Ljava/lang/Exception;
    throw v1

    .line 54
    .restart local v1    # "rootException":Ljava/lang/Exception;
    :cond_1
    sget-object v2, Lcom/google/gdata/util/EventSourceParser;->LOGGER:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-static {v2, v3, v4, v0}, Lcom/google/gdata/util/LogUtils;->logException(Ljava/util/logging/Logger;Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    new-instance v2, Lcom/google/gdata/util/ParseException;

    invoke-direct {v2, v0}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
