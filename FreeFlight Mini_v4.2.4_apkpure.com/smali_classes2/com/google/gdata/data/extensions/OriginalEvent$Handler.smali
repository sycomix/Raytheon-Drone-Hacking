.class Lcom/google/gdata/data/extensions/OriginalEvent$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "OriginalEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/OriginalEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/OriginalEvent;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/OriginalEvent;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;->this$0:Lcom/google/gdata/data/extensions/OriginalEvent;

    .line 102
    const-class v0, Lcom/google/gdata/data/extensions/RecurrenceException;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 103
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
    .line 123
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const-string v0, "when"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;->this$0:Lcom/google/gdata/data/extensions/OriginalEvent;

    new-instance v1, Lcom/google/gdata/data/extensions/When;

    invoke-direct {v1}, Lcom/google/gdata/data/extensions/When;-><init>()V

    iput-object v1, v0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalStartTime:Lcom/google/gdata/data/extensions/When;

    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;->this$0:Lcom/google/gdata/data/extensions/OriginalEvent;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalStartTime:Lcom/google/gdata/data/extensions/When;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/extensions/When;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    .line 130
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    goto :goto_0
.end method

.method public processAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 109
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;->this$0:Lcom/google/gdata/data/extensions/OriginalEvent;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalId:Ljava/lang/String;

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const-string v0, "href"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;->this$0:Lcom/google/gdata/data/extensions/OriginalEvent;

    iput-object p3, v0, Lcom/google/gdata/data/extensions/OriginalEvent;->href:Ljava/lang/String;

    goto :goto_0
.end method

.method public processEndElement()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;->this$0:Lcom/google/gdata/data/extensions/OriginalEvent;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->idRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;->this$0:Lcom/google/gdata/data/extensions/OriginalEvent;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalStartTime:Lcom/google/gdata/data/extensions/When;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->whenRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 146
    :cond_1
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 147
    return-void
.end method
