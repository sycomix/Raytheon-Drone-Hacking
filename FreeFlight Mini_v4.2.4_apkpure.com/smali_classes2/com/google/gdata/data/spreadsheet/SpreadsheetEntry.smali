.class public Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "SpreadsheetEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/spreadsheets/2006#spreadsheet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#spreadsheet"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/spreadsheets/2006"

    const-string v2, "http://schemas.google.com/spreadsheets/2006#spreadsheet"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 59
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .param p1, "sourceEntry"    # Lcom/google/gdata/data/BaseEntry;

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 68
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    return-void
.end method

.method private getWorksheetFeedUrlString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 108
    iget-object v2, p0, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v2}, Lcom/google/gdata/client/Service;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v1

    .line 110
    .local v1, "spreadsheetVersion":Lcom/google/gdata/util/Version;
    sget-object v2, Lcom/google/gdata/client/spreadsheet/SpreadsheetService$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const-string v2, "http://schemas.google.com/spreadsheets/2006#worksheetsfeed"

    sget-object v3, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 113
    .local v0, "feedLink":Lcom/google/gdata/data/Link;
    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 115
    .end local v0    # "feedLink":Lcom/google/gdata/data/Link;
    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/OutOfLineContent;

    check-cast v2, Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v2}, Lcom/google/gdata/data/OutOfLineContent;->getUri()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 0
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 172
    return-void
.end method

.method public getDefaultWorksheet()Lcom/google/gdata/data/spreadsheet/WorksheetEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->getWorksheetFeedUrlString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/default"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v1, v1, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v3, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/client/Service;->getEntry(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;

    return-object v1
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 155
    iget-object v2, p0, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v1, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->id:Ljava/lang/String;

    .line 156
    .local v1, "result":Ljava/lang/String;
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 158
    .local v0, "position":I
    if-lez v0, :cond_0

    .line 159
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 162
    :cond_0
    return-object v1
.end method

.method public getSpreadsheetLink()Lcom/google/gdata/data/Link;
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/gdata/data/BaseEntry;->getHtmlLink()Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getWorksheetFeedUrl()Ljava/net/URL;
    .locals 3

    .prologue
    .line 92
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {p0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->getWorksheetFeedUrlString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in GData server"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getWorksheets()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/spreadsheet/WorksheetEntry;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 128
    iget-object v1, p0, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v1, v1, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/SpreadsheetEntry;->getWorksheetFeedUrl()Ljava/net/URL;

    move-result-object v2

    const-class v3, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;

    invoke-virtual {v1, v2, v3}, Lcom/google/gdata/client/Service;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;

    .line 130
    .local v0, "feed":Lcom/google/gdata/data/spreadsheet/WorksheetFeed;
    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/WorksheetFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
