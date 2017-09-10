.class public Lcom/google/gdata/data/youtube/UserEventEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "UserEventEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#userEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/UserEventEntry$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/youtube/UserEventEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://gdata.youtube.com/schemas/2007/userevents.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/UserEventEntry;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 76
    const-string v0, "http://gdata.youtube.com/schemas/2007#userEvent"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method private clearEventType()V
    .locals 4

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/UserEventEntry;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 116
    .local v0, "categories":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/data/Category;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Category;

    .line 118
    .local v1, "category":Lcom/google/gdata/data/Category;
    const-string v2, "http://gdata.youtube.com/schemas/2007/userevents.cat"

    invoke-virtual {v1}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 122
    .end local v1    # "category":Lcom/google/gdata/data/Category;
    :cond_1
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 185
    sget-object v0, Lcom/google/gdata/data/youtube/YouTubeNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 188
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 189
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GEO_RSS_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 191
    sget-object v0, Lcom/google/gdata/data/geo/Namespaces;->GML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 194
    const-class v0, Lcom/google/gdata/data/youtube/UserEventEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtVideoId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 195
    const-class v0, Lcom/google/gdata/data/youtube/UserEventEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 196
    const-class v0, Lcom/google/gdata/data/youtube/UserEventEntry;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/google/gdata/data/extensions/Rating;->getDefaultDescription(Z)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 198
    const-class v0, Lcom/google/gdata/data/youtube/UserEventEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 199
    return-void
.end method

.method public getRating()Lcom/google/gdata/data/extensions/Rating;
    .locals 1

    .prologue
    .line 166
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Rating;

    return-object v0
.end method

.method public getUserEventType()Lcom/google/gdata/data/youtube/UserEventEntry$Type;
    .locals 5

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/UserEventEntry;->getCategories()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Category;

    .line 86
    .local v0, "category":Lcom/google/gdata/data/Category;
    const-string v3, "http://gdata.youtube.com/schemas/2007/userevents.cat"

    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 87
    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getTerm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->fromTerm(Ljava/lang/String;)Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    move-result-object v2

    .line 88
    .local v2, "type":Lcom/google/gdata/data/youtube/UserEventEntry$Type;
    if-eqz v2, :cond_0

    .line 93
    .end local v0    # "category":Lcom/google/gdata/data/Category;
    .end local v2    # "type":Lcom/google/gdata/data/youtube/UserEventEntry$Type;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 148
    const-class v1, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/UserEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtUsername;

    .line 149
    .local v0, "username":Lcom/google/gdata/data/youtube/YtUsername;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtUsername;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    const-class v1, Lcom/google/gdata/data/youtube/YtVideoId;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/UserEventEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtVideoId;

    .line 129
    .local v0, "videoId":Lcom/google/gdata/data/youtube/YtVideoId;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtVideoId;->getVideoId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setEventType(Lcom/google/gdata/data/youtube/UserEventEntry$Type;)V
    .locals 4
    .param p1, "type"    # Lcom/google/gdata/data/youtube/UserEventEntry$Type;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/UserEventEntry;->clearEventType()V

    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/UserEventEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/data/Category;

    const-string v2, "http://gdata.youtube.com/schemas/2007/userevents.cat"

    invoke-virtual {p1}, Lcom/google/gdata/data/youtube/UserEventEntry$Type;->getTerm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method

.method public setRating(Lcom/google/gdata/data/extensions/Rating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/extensions/Rating;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserEventEntry;->removeExtension(Ljava/lang/Class;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/UserEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    new-instance v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtUsername;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserEventEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserEventEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 1
    .param p1, "videoId"    # Ljava/lang/String;

    .prologue
    .line 136
    if-nez p1, :cond_0

    .line 137
    const-class v0, Lcom/google/gdata/data/youtube/YtVideoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserEventEntry;->removeExtension(Ljava/lang/Class;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtVideoId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtVideoId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/UserEventEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
