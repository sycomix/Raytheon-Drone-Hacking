.class public Lcom/google/gdata/data/MediaContent;
.super Lcom/google/gdata/data/OutOfLineContent;
.source "MediaContent.java"

# interfaces
.implements Lcom/google/gdata/data/media/IMediaContent;


# instance fields
.field protected mediaSource:Lcom/google/gdata/data/media/MediaSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/google/gdata/data/OutOfLineContent;-><init>()V

    return-void
.end method

.method public static getChildHandler(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;
    .locals 5
    .param p0, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p1, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    const-string v3, ""

    const-string v4, "src"

    invoke-interface {p1, v3, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    .local v2, "src":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 58
    new-instance v0, Lcom/google/gdata/data/Content$ChildHandlerInfo;

    invoke-direct {v0}, Lcom/google/gdata/data/Content$ChildHandlerInfo;-><init>()V

    .line 60
    .local v0, "childHandlerInfo":Lcom/google/gdata/data/Content$ChildHandlerInfo;
    new-instance v1, Lcom/google/gdata/data/MediaContent;

    invoke-direct {v1}, Lcom/google/gdata/data/MediaContent;-><init>()V

    .line 61
    .local v1, "mc":Lcom/google/gdata/data/MediaContent;
    new-instance v3, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Lcom/google/gdata/data/OutOfLineContent$AtomHandler;-><init>(Lcom/google/gdata/data/OutOfLineContent;)V

    iput-object v3, v0, Lcom/google/gdata/data/Content$ChildHandlerInfo;->handler:Lcom/google/gdata/util/XmlParser$ElementHandler;

    .line 62
    iput-object v1, v0, Lcom/google/gdata/data/Content$ChildHandlerInfo;->content:Lcom/google/gdata/data/Content;

    .line 68
    .end local v0    # "childHandlerInfo":Lcom/google/gdata/data/Content$ChildHandlerInfo;
    .end local v1    # "mc":Lcom/google/gdata/data/MediaContent;
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lcom/google/gdata/data/Content;->getChildHandler(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getMediaSource()Lcom/google/gdata/data/media/MediaSource;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/gdata/data/MediaContent;->mediaSource:Lcom/google/gdata/data/media/MediaSource;

    return-object v0
.end method

.method public setMediaSource(Lcom/google/gdata/data/media/MediaSource;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/media/MediaSource;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/gdata/data/MediaContent;->mediaSource:Lcom/google/gdata/data/media/MediaSource;

    return-void
.end method
