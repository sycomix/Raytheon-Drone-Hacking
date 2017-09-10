.class Lcom/google/gdata/data/calendar/EventWho$Handler;
.super Lcom/google/gdata/data/extensions/Who$Handler;
.source "EventWho.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/calendar/EventWho;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/calendar/EventWho;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/calendar/EventWho;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/gdata/data/calendar/EventWho$Handler;->this$0:Lcom/google/gdata/data/calendar/EventWho;

    .line 84
    const-class v0, Lcom/google/gdata/data/calendar/EventWho;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/extensions/Who$Handler;-><init>(Lcom/google/gdata/data/extensions/Who;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    const-string v1, "http://schemas.google.com/gCal/2005"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "resource"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    new-instance v0, Lcom/google/gdata/data/calendar/ResourceProperty;

    invoke-direct {v0}, Lcom/google/gdata/data/calendar/ResourceProperty;-><init>()V

    .line 97
    .local v0, "resource":Lcom/google/gdata/data/calendar/ResourceProperty;
    iget-object v1, p0, Lcom/google/gdata/data/calendar/EventWho$Handler;->this$0:Lcom/google/gdata/data/calendar/EventWho;

    invoke-virtual {v1, v0}, Lcom/google/gdata/data/calendar/EventWho;->setResource(Lcom/google/gdata/data/calendar/ResourceProperty;)V

    .line 98
    iget-object v1, p0, Lcom/google/gdata/data/calendar/EventWho$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/calendar/ResourceProperty;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    .line 102
    .end local v0    # "resource":Lcom/google/gdata/data/calendar/ResourceProperty;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/extensions/Who$Handler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v1

    goto :goto_0
.end method
