.class Lcom/google/gdata/data/extensions/Comments$Handler;
.super Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;
.source "Comments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gdata/data/extensions/Comments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Handler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/gdata/data/extensions/Comments;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/extensions/Comments;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Comments$Handler;->this$0:Lcom/google/gdata/data/extensions/Comments;

    .line 95
    const-class v0, Lcom/google/gdata/data/extensions/Comments;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;-><init>(Lcom/google/gdata/data/ExtensionPoint;Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/Class;)V

    .line 96
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
    .line 115
    const-string v0, "http://schemas.google.com/g/2005"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "feedLink"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Comments$Handler;->this$0:Lcom/google/gdata/data/extensions/Comments;

    new-instance v1, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-direct {v1}, Lcom/google/gdata/data/extensions/FeedLink;-><init>()V

    iput-object v1, v0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Comments$Handler;->this$0:Lcom/google/gdata/data/extensions/Comments;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    iget-object v1, p0, Lcom/google/gdata/data/extensions/Comments$Handler;->extProfile:Lcom/google/gdata/data/ExtensionProfile;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/gdata/data/extensions/FeedLink;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    .line 122
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->getChildHandler(Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

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
    .line 101
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Comments$Handler;->this$0:Lcom/google/gdata/data/extensions/Comments;

    iget-object v0, v0, Lcom/google/gdata/data/extensions/Comments;->feedLink:Lcom/google/gdata/data/extensions/FeedLink;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/google/gdata/util/ParseException;

    sget-object v1, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v1, v1, Lcom/google/gdata/client/CoreErrorDomain;->commentsFeedLinkRequired:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v0, v1}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    throw v0

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/google/gdata/data/ExtensionPoint$ExtensionHandler;->processEndElement()V

    .line 107
    return-void
.end method
