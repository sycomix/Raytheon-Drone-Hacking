.class public Lcom/google/gdata/data/youtube/SubscriptionEntry;
.super Lcom/google/gdata/data/youtube/FeedLinkEntry;
.source "SubscriptionEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#subscription"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/youtube/FeedLinkEntry",
        "<",
        "Lcom/google/gdata/data/youtube/SubscriptionEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://gdata.youtube.com/schemas/2007/subscriptiontypes.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/SubscriptionEntry;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/FeedLinkEntry;-><init>()V

    .line 79
    const-string v0, "http://gdata.youtube.com/schemas/2007#subscription"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 80
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
    .line 83
    .local p1, "base":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/youtube/FeedLinkEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 84
    const-string v0, "http://gdata.youtube.com/schemas/2007#subscription"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private clearSubscriptionType()V
    .locals 4

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 134
    .local v0, "categories":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/gdata/data/Category;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Category;

    .line 136
    .local v1, "category":Lcom/google/gdata/data/Category;
    const-string v2, "http://gdata.youtube.com/schemas/2007/subscriptiontypes.cat"

    invoke-virtual {v1}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 141
    .end local v1    # "category":Lcom/google/gdata/data/Category;
    :cond_1
    return-void
.end method


# virtual methods
.method public addSubscriptionType(Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;)V
    .locals 4
    .param p1, "type"    # Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/data/Category;

    const-string v2, "http://gdata.youtube.com/schemas/2007/subscriptiontypes.cat"

    invoke-virtual {p1}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->getTerm()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 230
    invoke-super {p0, p1}, Lcom/google/gdata/data/youtube/FeedLinkEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 232
    const-class v0, Lcom/google/gdata/data/youtube/SubscriptionEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 233
    const-class v0, Lcom/google/gdata/data/youtube/SubscriptionEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtQueryString;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 234
    const-class v0, Lcom/google/gdata/data/youtube/SubscriptionEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtPlaylistTitle;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 235
    const-class v0, Lcom/google/gdata/data/youtube/SubscriptionEntry;

    const-class v1, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 236
    return-void
.end method

.method public getPlaylistId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    const-class v1, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    .line 225
    .local v0, "playlistId":Lcom/google/gdata/data/youtube/YtPlaylistId;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtPlaylistId;->getPlaylistId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPlaylistTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 203
    const-class v1, Lcom/google/gdata/data/youtube/YtPlaylistTitle;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtPlaylistTitle;

    .line 204
    .local v0, "playlistTitle":Lcom/google/gdata/data/youtube/YtPlaylistTitle;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtPlaylistTitle;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getQueryString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    const-class v1, Lcom/google/gdata/data/youtube/YtQueryString;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtQueryString;

    .line 182
    .local v0, "query":Lcom/google/gdata/data/youtube/YtQueryString;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtQueryString;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubscriptionType()Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
    .locals 5

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->getCategories()Ljava/util/Set;

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

    .line 104
    .local v0, "category":Lcom/google/gdata/data/Category;
    const-string v3, "http://gdata.youtube.com/schemas/2007/subscriptiontypes.cat"

    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getTerm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;->fromTerm(Ljava/lang/String;)Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    move-result-object v2

    .line 107
    .local v2, "type":Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
    if-eqz v2, :cond_0

    .line 112
    .end local v0    # "category":Lcom/google/gdata/data/Category;
    .end local v2    # "type":Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 160
    const-class v1, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtUsername;

    .line 161
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

.method public setPlaylistId(Ljava/lang/String;)V
    .locals 1
    .param p1, "playlistId"    # Ljava/lang/String;

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    new-instance v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtPlaylistId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtPlaylistId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setPlaylistTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "playlistTitle"    # Ljava/lang/String;

    .prologue
    .line 191
    if-eqz p1, :cond_0

    .line 192
    new-instance v0, Lcom/google/gdata/data/youtube/YtPlaylistTitle;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtPlaylistTitle;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtPlaylistTitle;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setQueryString(Ljava/lang/String;)V
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 169
    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Lcom/google/gdata/data/youtube/YtQueryString;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtQueryString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtQueryString;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setSubscriptionType(Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;)V
    .locals 0
    .param p1, "type"    # Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->clearSubscriptionType()V

    .line 124
    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->addSubscriptionType(Lcom/google/gdata/data/youtube/SubscriptionEntry$Type;)V

    .line 127
    :cond_0
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .line 149
    new-instance v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtUsername;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 153
    :goto_0
    return-void

    .line 151
    :cond_0
    const-class v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/SubscriptionEntry;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
