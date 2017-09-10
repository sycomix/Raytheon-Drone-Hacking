.class public Lcom/google/api/gbase/client/FeedURLFactory;
.super Ljava/lang/Object;
.source "FeedURLFactory.java"


# static fields
.field public static final DEFAULT_BASE_URL:Ljava/lang/String; = "http://www.google.com/base/"

.field private static final instance:Lcom/google/api/gbase/client/FeedURLFactory;


# instance fields
.field private baseUrl:Ljava/net/URL;

.field private feedAttributes:Ljava/net/URL;

.field private feedItems:Ljava/net/URL;

.field private feedItemsBatch:Ljava/net/URL;

.field private feedLocales:Ljava/net/URL;

.field private feedSnippets:Ljava/net/URL;

.field private feedSnippetsBatch:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/google/api/gbase/client/FeedURLFactory;

    invoke-direct {v0}, Lcom/google/api/gbase/client/FeedURLFactory;-><init>()V

    sput-object v0, Lcom/google/api/gbase/client/FeedURLFactory;->instance:Lcom/google/api/gbase/client/FeedURLFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    :try_start_0
    const-string v1, "http://www.google.com/base/"

    invoke-direct {p0, v1}, Lcom/google/api/gbase/client/FeedURLFactory;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unexpected malformed URL"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/FeedURLFactory;->init(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 117
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 is not supported by the JVM"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefault()Lcom/google/api/gbase/client/FeedURLFactory;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/google/api/gbase/client/FeedURLFactory;->instance:Lcom/google/api/gbase/client/FeedURLFactory;

    return-object v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    .line 96
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/snippets/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedSnippets:Ljava/net/URL;

    .line 97
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/snippets/batch"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedSnippetsBatch:Ljava/net/URL;

    .line 98
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/items/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedItems:Ljava/net/URL;

    .line 99
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/items/batch"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedItemsBatch:Ljava/net/URL;

    .line 100
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/locales/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedLocales:Ljava/net/URL;

    .line 101
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/attributes/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedAttributes:Ljava/net/URL;

    .line 102
    return-void
.end method


# virtual methods
.method public getAttributesFeedURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedAttributes:Ljava/net/URL;

    return-object v0
.end method

.method public getBaseURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getItemTypesEntryURL(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;
    .param p2, "itemType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 246
    if-nez p1, :cond_0

    .line 247
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    if-nez p2, :cond_1

    .line 250
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "itemType is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feeds/itemtypes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/google/api/gbase/client/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public getItemTypesFeedURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "locale"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 227
    if-nez p1, :cond_0

    .line 228
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "locale is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->baseUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feeds/itemtypes/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public getItemsBatchFeedURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedItemsBatch:Ljava/net/URL;

    return-object v0
.end method

.method public getItemsEntryURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "entryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 188
    if-nez p1, :cond_0

    .line 189
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entryId is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedItems:Ljava/net/URL;

    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public getItemsFeedURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedItems:Ljava/net/URL;

    return-object v0
.end method

.method public getLocalesFeedURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedLocales:Ljava/net/URL;

    return-object v0
.end method

.method public getSnippetsBatchFeedURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedSnippetsBatch:Ljava/net/URL;

    return-object v0
.end method

.method public getSnippetsEntryURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "entryId is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedSnippets:Ljava/net/URL;

    invoke-direct {p0, p1}, Lcom/google/api/gbase/client/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSnippetsFeedURL()Ljava/net/URL;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/api/gbase/client/FeedURLFactory;->feedSnippets:Ljava/net/URL;

    return-object v0
.end method
