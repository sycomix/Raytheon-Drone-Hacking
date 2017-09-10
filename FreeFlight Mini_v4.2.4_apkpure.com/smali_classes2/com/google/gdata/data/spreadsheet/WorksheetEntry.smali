.class public Lcom/google/gdata/data/spreadsheet/WorksheetEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "WorksheetEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/spreadsheets/2006#worksheet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/spreadsheet/WorksheetEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/spreadsheets/2006#worksheet"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 49
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/spreadsheets/2006"

    const-string v2, "http://schemas.google.com/spreadsheets/2006#worksheet"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "rowCount"    # I
    .param p2, "colCount"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 66
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    new-instance v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/spreadsheet/RowCount;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 68
    new-instance v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-direct {v0, p2}, Lcom/google/gdata/data/spreadsheet/ColCount;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->addExtension(Lcom/google/gdata/data/Extension;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 2
    .param p1, "sourceEntry"    # Lcom/google/gdata/data/BaseEntry;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    return-void
.end method

.method private getFeedUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "linkRelKind"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v2, p0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->state:Lcom/google/gdata/data/BaseEntry$EntryState;

    iget-object v2, v2, Lcom/google/gdata/data/BaseEntry$EntryState;->service:Lcom/google/gdata/client/Service;

    invoke-virtual {v2}, Lcom/google/gdata/client/Service;->getProtocolVersion()Lcom/google/gdata/util/Version;

    move-result-object v1

    .line 122
    .local v1, "spreadsheetVersion":Lcom/google/gdata/util/Version;
    sget-object v2, Lcom/google/gdata/client/spreadsheet/SpreadsheetService$Versions;->V1:Lcom/google/gdata/util/Version;

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 123
    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 124
    .local v0, "feedLink":Lcom/google/gdata/data/Link;
    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 133
    .end local v0    # "feedLink":Lcom/google/gdata/data/Link;
    :goto_0
    return-object v2

    .line 127
    :cond_0
    const-string v2, "http://schemas.google.com/spreadsheets/2006#listfeed"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getContent()Lcom/google/gdata/data/Content;

    move-result-object v2

    check-cast v2, Lcom/google/gdata/data/OutOfLineContent;

    check-cast v2, Lcom/google/gdata/data/OutOfLineContent;

    invoke-virtual {v2}, Lcom/google/gdata/data/OutOfLineContent;->getUri()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 132
    :cond_1
    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, p1, v2}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 133
    .restart local v0    # "feedLink":Lcom/google/gdata/data/Link;
    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 84
    const-class v0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;

    invoke-static {}, Lcom/google/gdata/data/spreadsheet/RowCount;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 85
    const-class v0, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;

    invoke-static {}, Lcom/google/gdata/data/spreadsheet/ColCount;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 86
    return-void
.end method

.method public getCellFeedUrl()Ljava/net/URL;
    .locals 3

    .prologue
    .line 113
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://schemas.google.com/spreadsheets/2006#cellsfeed"

    invoke-direct {p0, v2}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getFeedUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in GData server"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getColCount()I
    .locals 2

    .prologue
    .line 180
    const-class v1, Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    .line 181
    .local v0, "count":Lcom/google/gdata/data/spreadsheet/ColCount;
    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/ColCount;->getCount()I

    move-result v1

    .line 184
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListFeedUrl()Ljava/net/URL;
    .locals 3

    .prologue
    .line 98
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://schemas.google.com/spreadsheets/2006#listfeed"

    invoke-direct {p0, v2}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getFeedUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error in GData server"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getRowCount()I
    .locals 2

    .prologue
    .line 148
    const-class v1, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    .line 149
    .local v0, "count":Lcom/google/gdata/data/spreadsheet/RowCount;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Lcom/google/gdata/data/spreadsheet/RowCount;->getCount()I

    move-result v1

    .line 152
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setColCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 199
    new-instance v0, Lcom/google/gdata/data/spreadsheet/ColCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/spreadsheet/ColCount;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 200
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 167
    new-instance v0, Lcom/google/gdata/data/spreadsheet/RowCount;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/spreadsheet/RowCount;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/spreadsheet/WorksheetEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 168
    return-void
.end method
