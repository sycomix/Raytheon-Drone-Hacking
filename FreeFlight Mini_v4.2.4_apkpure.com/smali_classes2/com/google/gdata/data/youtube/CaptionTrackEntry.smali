.class public Lcom/google/gdata/data/youtube/CaptionTrackEntry;
.super Lcom/google/gdata/data/media/MediaEntry;
.source "CaptionTrackEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#captionTrack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/media/MediaEntry",
        "<",
        "Lcom/google/gdata/data/youtube/CaptionTrackEntry;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/media/MediaEntry;-><init>()V

    .line 43
    const-string v0, "http://gdata.youtube.com/schemas/2007#captionTrack"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p1, "base":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 48
    const-string v0, "http://gdata.youtube.com/schemas/2007#captionTrack"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/google/gdata/data/media/MediaEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 138
    const-class v0, Lcom/google/gdata/data/youtube/CaptionTrackEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtDerived;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 139
    const-class v0, Lcom/google/gdata/data/youtube/CaptionTrackEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtFormatInfo;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 141
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 142
    const-class v0, Lcom/google/gdata/data/PubControl;

    const-class v1, Lcom/google/gdata/data/youtube/YtPublicationState;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 143
    const-class v0, Lcom/google/gdata/data/youtube/CaptionTrackEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 144
    return-void
.end method

.method protected getContentHandlerInfo(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1, p2}, Lcom/google/gdata/data/MediaContent;->getChildHandler(Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)Lcom/google/gdata/data/Content$ChildHandlerInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDerived()Lcom/google/gdata/data/youtube/YtDerived;
    .locals 1

    .prologue
    .line 90
    const-class v0, Lcom/google/gdata/data/youtube/YtDerived;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtDerived;

    return-object v0
.end method

.method public getFormatInfo()Lcom/google/gdata/data/youtube/YtFormatInfo;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/google/gdata/data/youtube/YtFormatInfo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtFormatInfo;

    return-object v0
.end method

.method public getLanguageCode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v0

    .line 53
    .local v0, "content":Lcom/google/gdata/data/Content;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/Content;->getLang()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getOrCreateFormatInfo()Lcom/google/gdata/data/youtube/YtFormatInfo;
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getFormatInfo()Lcom/google/gdata/data/youtube/YtFormatInfo;

    move-result-object v0

    .line 107
    .local v0, "info":Lcom/google/gdata/data/youtube/YtFormatInfo;
    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/google/gdata/data/youtube/YtFormatInfo;

    .end local v0    # "info":Lcom/google/gdata/data/youtube/YtFormatInfo;
    invoke-direct {v0}, Lcom/google/gdata/data/youtube/YtFormatInfo;-><init>()V

    .line 109
    .restart local v0    # "info":Lcom/google/gdata/data/youtube/YtFormatInfo;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->setFormatInfo(Lcom/google/gdata/data/youtube/YtFormatInfo;)V

    .line 111
    :cond_0
    const-class v1, Lcom/google/gdata/data/youtube/YtFormatInfo;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/youtube/YtFormatInfo;

    return-object v1
.end method

.method public getPublicationState()Lcom/google/gdata/data/youtube/YtPublicationState;
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    const-class v1, Lcom/google/gdata/data/youtube/YtPublicationState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPublicationState;

    goto :goto_0
.end method

.method public hasAutomaticSpeechRecognition()Z
    .locals 3

    .prologue
    .line 115
    const-class v1, Lcom/google/gdata/data/youtube/YtDerived;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtDerived;

    .line 116
    .local v0, "derived":Lcom/google/gdata/data/youtube/YtDerived;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtDerived;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "speechRecognition"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAutomaticSpeechRecognition(Z)V
    .locals 2
    .param p1, "asr"    # Z

    .prologue
    .line 121
    if-eqz p1, :cond_0

    .line 122
    new-instance v0, Lcom/google/gdata/data/youtube/YtDerived;

    const-string v1, "speechRecognition"

    invoke-direct {v0, v1}, Lcom/google/gdata/data/youtube/YtDerived;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtDerived;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setDerived(Lcom/google/gdata/data/youtube/YtDerived;)V
    .locals 1
    .param p1, "derived"    # Lcom/google/gdata/data/youtube/YtDerived;

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtDerived;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setFormatInfo(Lcom/google/gdata/data/youtube/YtFormatInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/google/gdata/data/youtube/YtFormatInfo;

    .prologue
    .line 94
    if-eqz p1, :cond_0

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtFormatInfo;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setPublicationState(Lcom/google/gdata/data/youtube/YtPublicationState;)V
    .locals 2
    .param p1, "state"    # Lcom/google/gdata/data/youtube/YtPublicationState;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->getPubControl()Lcom/google/gdata/data/PubControl;

    move-result-object v0

    .line 58
    .local v0, "control":Lcom/google/gdata/data/PubControl;
    if-nez p1, :cond_2

    .line 59
    if-nez v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    const-class v1, Lcom/google/gdata/data/youtube/YtPublicationState;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/PubControl;->removeExtension(Ljava/lang/Class;)V

    .line 63
    invoke-virtual {v0}, Lcom/google/gdata/data/PubControl;->isDraft()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/gdata/data/PubControl;->getExtensions()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->setPubControl(Lcom/google/gdata/data/PubControl;)V

    goto :goto_0

    .line 68
    :cond_2
    if-nez v0, :cond_3

    .line 69
    new-instance v0, Lcom/google/gdata/data/PubControl;

    .end local v0    # "control":Lcom/google/gdata/data/PubControl;
    invoke-direct {v0}, Lcom/google/gdata/data/PubControl;-><init>()V

    .line 70
    .restart local v0    # "control":Lcom/google/gdata/data/PubControl;
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/CaptionTrackEntry;->setPubControl(Lcom/google/gdata/data/PubControl;)V

    .line 72
    :cond_3
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/PubControl;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
