.class public Lcom/google/gdata/client/spreadsheet/FeedURLFactory;
.super Ljava/lang/Object;
.source "FeedURLFactory.java"


# static fields
.field private static final BASE_PATH:Ljava/lang/String; = "feeds/"

.field private static final CELLS_PATH:Ljava/lang/String; = "feeds/cells/"

.field public static final DEFAULT_SPREADSHEETS_URL:Ljava/lang/String; = "https://spreadsheets.google.com"

.field private static final LIST_PATH:Ljava/lang/String; = "feeds/list/"

.field private static final RECORD_PATH:Ljava/lang/String; = "/records/"

.field private static final SPREADSHEETS_PATH:Ljava/lang/String; = "feeds/spreadsheets/private/full"

.field private static final TABLE_PATH:Ljava/lang/String; = "/tables/"

.field private static final WORKSHEETS_PATH:Ljava/lang/String; = "feeds/worksheets/"

.field private static final instance:Lcom/google/gdata/client/spreadsheet/FeedURLFactory;


# instance fields
.field private baseUrl:Ljava/net/URL;

.field private feedCells:Ljava/net/URL;

.field private feedList:Ljava/net/URL;

.field private feedSpreadsheets:Ljava/net/URL;

.field private feedWorksheets:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;

    invoke-direct {v0}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;-><init>()V

    sput-object v0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->instance:Lcom/google/gdata/client/spreadsheet/FeedURLFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    :try_start_0
    const-string v1, "https://spreadsheets.google.com"

    invoke-direct {p0, v1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-direct {p0, p1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->init(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method private encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 130
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "UTF-8 is not supported by the JVM"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getDefault()Lcom/google/gdata/client/spreadsheet/FeedURLFactory;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->instance:Lcom/google/gdata/client/spreadsheet/FeedURLFactory;

    return-object v0
.end method

.method public static getSpreadsheetKeyFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 279
    :try_start_0
    new-instance v11, Ljava/net/URL;

    invoke-direct {v11, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 280
    .local v11, "urlAsUrl":Ljava/net/URL;
    invoke-virtual {v11}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, "query":Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 283
    const-string v12, "&"

    invoke-virtual {v10, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 285
    .local v9, "parts":[Ljava/lang/String;
    const/4 v7, -0x1

    .line 286
    .local v7, "offset":I
    const/4 v6, 0x0

    .line 287
    .local v6, "numParts":I
    const-string v4, ""

    .line 289
    .local v4, "keyOrId":Ljava/lang/String;
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v8, v0, v3

    .line 290
    .local v8, "part":Ljava/lang/String;
    const-string v12, "id="

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 291
    const-string v12, "id="

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    .line 292
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 293
    const/4 v6, 0x4

    .line 306
    .end local v8    # "part":Ljava/lang/String;
    :cond_0
    :goto_1
    const/4 v12, -0x1

    if-le v7, v12, :cond_5

    .line 307
    const-string v12, "\\."

    invoke-virtual {v4, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 308
    .local v1, "dottedParts":[Ljava/lang/String;
    array-length v12, v1

    if-ne v12, v6, :cond_5

    .line 309
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 319
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "dottedParts":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "keyOrId":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "numParts":I
    .end local v7    # "offset":I
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "query":Ljava/lang/String;
    .end local v11    # "urlAsUrl":Ljava/net/URL;
    :cond_1
    :goto_2
    return-object v4

    .line 295
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v3    # "i$":I
    .restart local v4    # "keyOrId":Ljava/lang/String;
    .restart local v5    # "len$":I
    .restart local v6    # "numParts":I
    .restart local v7    # "offset":I
    .restart local v8    # "part":Ljava/lang/String;
    .restart local v9    # "parts":[Ljava/lang/String;
    .restart local v10    # "query":Ljava/lang/String;
    .restart local v11    # "urlAsUrl":Ljava/net/URL;
    :cond_2
    const-string v12, "key="

    invoke-virtual {v8, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 296
    const-string v12, "key="

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    .line 297
    invoke-virtual {v8, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    const-string v12, "p"

    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    if-nez v12, :cond_1

    .line 301
    const/4 v6, 0x2

    .line 302
    goto :goto_1

    .line 289
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 314
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "keyOrId":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "numParts":I
    .end local v7    # "offset":I
    .end local v8    # "part":Ljava/lang/String;
    .end local v9    # "parts":[Ljava/lang/String;
    .end local v10    # "query":Ljava/lang/String;
    .end local v11    # "urlAsUrl":Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 316
    .local v2, "e":Ljava/net/MalformedURLException;
    const-string v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 318
    .restart local v1    # "dottedParts":[Ljava/lang/String;
    array-length v12, v1

    const/4 v13, 0x4

    if-eq v12, v13, :cond_4

    array-length v12, v1

    const/4 v13, 0x2

    if-ne v12, v13, :cond_5

    .line 319
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v1, v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 323
    .end local v1    # "dottedParts":[Ljava/lang/String;
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :cond_5
    new-instance v12, Ljava/lang/IllegalArgumentException;

    const-string v13, "Uknown URL format."

    invoke-direct {v12, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v12
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
    .line 106
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    :cond_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    .line 111
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/spreadsheets/private/full"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedSpreadsheets:Ljava/net/URL;

    .line 112
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/worksheets/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedWorksheets:Ljava/net/URL;

    .line 113
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/list/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedList:Ljava/net/URL;

    .line 114
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    const-string v2, "feeds/cells/"

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedCells:Ljava/net/URL;

    .line 115
    return-void
.end method

.method private makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "visibility"    # Ljava/lang/String;
    .param p4, "projection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 254
    if-nez p3, :cond_0

    .line 255
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "visibility is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_0
    if-nez p4, :cond_1

    .line 258
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "projection is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p3}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p4}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 261
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method private makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spreadsheetKey"    # Ljava/lang/String;
    .param p3, "parentResourceId"    # Ljava/lang/String;
    .param p4, "visibility"    # Ljava/lang/String;
    .param p5, "projection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 238
    if-nez p2, :cond_0

    .line 239
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "spreadsheetKey is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 241
    :cond_0
    if-nez p3, :cond_1

    .line 242
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "worksheetId is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p2}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "path":Ljava/lang/String;
    invoke-direct {p0, p1, v0, p4, p5}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBaseUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    return-object v0
.end method

.method public getCellFeedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "spreadsheetKey"    # Ljava/lang/String;
    .param p2, "worksheetId"    # Ljava/lang/String;
    .param p3, "visibility"    # Ljava/lang/String;
    .param p4, "projection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 226
    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedCells:Ljava/net/URL;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getListFeedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "spreadsheetKey"    # Ljava/lang/String;
    .param p2, "worksheetId"    # Ljava/lang/String;
    .param p3, "visibility"    # Ljava/lang/String;
    .param p4, "projection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedList:Ljava/net/URL;

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getRecordFeedUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "spreadsheetKey"    # Ljava/lang/String;
    .param p2, "tableId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spreadsheetKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feeds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/records/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public getSpreadsheetsFeedUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedSpreadsheets:Ljava/net/URL;

    return-object v0
.end method

.method public getTableFeedUrl(Ljava/lang/String;)Ljava/net/URL;
    .locals 4
    .param p1, "spreadsheetKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spreadsheetKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->baseUrl:Ljava/net/URL;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feeds/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/tables/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    return-object v0
.end method

.method public getWorksheetFeedUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p1, "spreadsheetKey"    # Ljava/lang/String;
    .param p2, "visibility"    # Ljava/lang/String;
    .param p3, "projection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "spreadsheetKey is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->feedWorksheets:Ljava/net/URL;

    invoke-direct {p0, p1}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p3}, Lcom/google/gdata/client/spreadsheet/FeedURLFactory;->makeUrl(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
