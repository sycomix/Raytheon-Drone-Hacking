.class public Lcom/google/gdata/data/sites/ListPageEntry;
.super Lcom/google/gdata/data/sites/BasePageEntry;
.source "ListPageEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/sites/2008#listpage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/sites/BasePageEntry",
        "<",
        "Lcom/google/gdata/data/sites/ListPageEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/sites/2008#listpage"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/sites/2008#listpage"

    const-string v3, "listpage"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/sites/ListPageEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/sites/BasePageEntry;-><init>()V

    .line 56
    invoke-virtual {p0}, Lcom/google/gdata/data/sites/ListPageEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/sites/ListPageEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/sites/BasePageEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 67
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 71
    const-class v0, Lcom/google/gdata/data/sites/ListPageEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/sites/BasePageEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 75
    const-class v0, Lcom/google/gdata/data/sites/ListPageEntry;

    invoke-static {v4, v5}, Lcom/google/gdata/data/spreadsheet/Data;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 77
    new-instance v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-direct {v0}, Lcom/google/gdata/data/spreadsheet/Data;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/spreadsheet/Data;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 78
    const-class v7, Lcom/google/gdata/data/sites/ListPageEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/FeedLink;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v6, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v6}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "feedLink"

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 81
    new-instance v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/FeedLink;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/FeedLink;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 82
    const-class v0, Lcom/google/gdata/data/sites/ListPageEntry;

    invoke-static {v4, v5}, Lcom/google/gdata/data/spreadsheet/Header;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 84
    const-class v0, Lcom/google/gdata/data/sites/ListPageEntry;

    invoke-static {v4, v5}, Lcom/google/gdata/data/spreadsheet/Worksheet;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getAtomAttachmentsLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 225
    const-string v0, "http://schemas.google.com/sites/2008#attachments"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/ListPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getAtomRepliesLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 234
    const-string v0, "replies"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/ListPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/google/gdata/data/spreadsheet/Data;
    .locals 1

    .prologue
    .line 94
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Data;

    return-object v0
.end method

.method public getFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1

    .prologue
    .line 127
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/FeedLink;

    return-object v0
.end method

.method public getHeader()Lcom/google/gdata/data/spreadsheet/Header;
    .locals 1

    .prologue
    .line 162
    const-class v0, Lcom/google/gdata/data/spreadsheet/Header;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Header;

    return-object v0
.end method

.method public getHtmlAttachmentsLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 243
    const-string v0, "http://schemas.google.com/sites/2008#attachments"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/ListPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getHtmlRepliesLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 252
    const-string v0, "replies"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/ListPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getParentLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 261
    const-string v0, "http://schemas.google.com/sites/2008#parent"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/sites/ListPageEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getWorksheet()Lcom/google/gdata/data/spreadsheet/Worksheet;
    .locals 1

    .prologue
    .line 193
    const-class v0, Lcom/google/gdata/data/spreadsheet/Worksheet;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/spreadsheet/Worksheet;

    return-object v0
.end method

.method public hasData()Z
    .locals 1

    .prologue
    .line 116
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFeedLink()Z
    .locals 1

    .prologue
    .line 153
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasHeader()Z
    .locals 1

    .prologue
    .line 184
    const-class v0, Lcom/google/gdata/data/spreadsheet/Header;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasWorksheet()Z
    .locals 1

    .prologue
    .line 216
    const-class v0, Lcom/google/gdata/data/spreadsheet/Worksheet;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setData(Lcom/google/gdata/data/spreadsheet/Data;)V
    .locals 1
    .param p1, "data"    # Lcom/google/gdata/data/spreadsheet/Data;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const-class v0, Lcom/google/gdata/data/spreadsheet/Data;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->removeExtension(Ljava/lang/Class;)V

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/ListPageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setFeedLink(Lcom/google/gdata/data/extensions/FeedLink;)V
    .locals 1
    .param p1, "feedLink"    # Lcom/google/gdata/data/extensions/FeedLink;

    .prologue
    .line 138
    if-nez p1, :cond_0

    .line 139
    const-class v0, Lcom/google/gdata/data/extensions/FeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->removeExtension(Ljava/lang/Class;)V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/ListPageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setHeader(Lcom/google/gdata/data/spreadsheet/Header;)V
    .locals 1
    .param p1, "header"    # Lcom/google/gdata/data/spreadsheet/Header;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    const-class v0, Lcom/google/gdata/data/spreadsheet/Header;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->removeExtension(Ljava/lang/Class;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/ListPageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setWorksheet(Lcom/google/gdata/data/spreadsheet/Worksheet;)V
    .locals 1
    .param p1, "worksheet"    # Lcom/google/gdata/data/spreadsheet/Worksheet;

    .prologue
    .line 203
    if-nez p1, :cond_0

    .line 204
    const-class v0, Lcom/google/gdata/data/spreadsheet/Worksheet;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/ListPageEntry;->removeExtension(Ljava/lang/Class;)V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/ListPageEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{ListPageEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/google/gdata/data/sites/BasePageEntry;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 266
    return-void
.end method
