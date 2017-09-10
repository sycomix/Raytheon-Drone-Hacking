.class public Lcom/google/gdata/data/books/VolumeEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "VolumeEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/books/2008#volume"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/books/VolumeEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/books/2008#volume"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/books/2008#volume"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/books/VolumeEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/books/VolumeEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
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
    .line 74
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 75
    return-void
.end method


# virtual methods
.method public addCreator(Lcom/google/gdata/data/dublincore/Creator;)V
    .locals 1
    .param p1, "creator"    # Lcom/google/gdata/data/dublincore/Creator;

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getCreators()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public addDate(Lcom/google/gdata/data/dublincore/Date;)V
    .locals 1
    .param p1, "date"    # Lcom/google/gdata/data/dublincore/Date;

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getDates()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    return-void
.end method

.method public addDescription(Lcom/google/gdata/data/dublincore/Description;)V
    .locals 1
    .param p1, "description"    # Lcom/google/gdata/data/dublincore/Description;

    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getDescriptions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    return-void
.end method

.method public addFormat(Lcom/google/gdata/data/dublincore/Format;)V
    .locals 1
    .param p1, "format"    # Lcom/google/gdata/data/dublincore/Format;

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getFormats()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    return-void
.end method

.method public addIdentifier(Lcom/google/gdata/data/dublincore/Identifier;)V
    .locals 1
    .param p1, "identifier"    # Lcom/google/gdata/data/dublincore/Identifier;

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getIdentifiers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method

.method public addLanguage(Lcom/google/gdata/data/dublincore/Language;)V
    .locals 1
    .param p1, "language"    # Lcom/google/gdata/data/dublincore/Language;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getLanguages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method

.method public addPublisher(Lcom/google/gdata/data/dublincore/Publisher;)V
    .locals 1
    .param p1, "publisher"    # Lcom/google/gdata/data/dublincore/Publisher;

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getPublishers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    return-void
.end method

.method public addSubject(Lcom/google/gdata/data/dublincore/Subject;)V
    .locals 1
    .param p1, "subject"    # Lcom/google/gdata/data/dublincore/Subject;

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getSubjects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 474
    return-void
.end method

.method public addTitle(Lcom/google/gdata/data/dublincore/Title;)V
    .locals 1
    .param p1, "title"    # Lcom/google/gdata/data/dublincore/Title;

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/google/gdata/data/books/VolumeEntry;->getTitles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 9
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 79
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 83
    const-class v7, Lcom/google/gdata/data/books/VolumeEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Comments;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "comments"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 86
    new-instance v0, Lcom/google/gdata/data/extensions/Comments;

    invoke-direct {v0}, Lcom/google/gdata/data/extensions/Comments;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/extensions/Comments;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 87
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Creator;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 89
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Date;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 91
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Description;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 93
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    const-class v1, Lcom/google/gdata/data/books/Embeddability;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 94
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Format;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 96
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Identifier;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 98
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Language;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 100
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    const-class v1, Lcom/google/gdata/data/books/OpenAccess;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 101
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Publisher;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 103
    const-class v7, Lcom/google/gdata/data/books/VolumeEntry;

    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    const-class v1, Lcom/google/gdata/data/extensions/Rating;

    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "gd"

    const-string v5, "http://schemas.google.com/g/2005"

    invoke-direct {v2, v3, v5}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rating"

    move v5, v4

    move v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/gdata/data/ExtensionDescription;-><init>(Ljava/lang/Class;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;ZZZ)V

    invoke-virtual {p1, v7, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 106
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    const-class v1, Lcom/google/gdata/data/books/Review;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 107
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Subject;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 109
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    invoke-static {v4, v8}, Lcom/google/gdata/data/dublincore/Title;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 111
    const-class v0, Lcom/google/gdata/data/books/VolumeEntry;

    const-class v1, Lcom/google/gdata/data/books/Viewability;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto/16 :goto_0
.end method

.method public getAnnotationLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 550
    const-string v0, "http://schemas.google.com/books/2008/annotation"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/books/VolumeEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getAtomAlternateLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 561
    const-string v0, "alternate"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/books/VolumeEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getComments()Lcom/google/gdata/data/extensions/Comments;
    .locals 1

    .prologue
    .line 120
    const-class v0, Lcom/google/gdata/data/extensions/Comments;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Comments;

    return-object v0
.end method

.method public getCreators()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Creator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    const-class v0, Lcom/google/gdata/data/dublincore/Creator;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Date;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    const-class v0, Lcom/google/gdata/data/dublincore/Date;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Description;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    const-class v0, Lcom/google/gdata/data/dublincore/Description;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEmbeddability()Lcom/google/gdata/data/books/Embeddability;
    .locals 1

    .prologue
    .line 232
    const-class v0, Lcom/google/gdata/data/books/Embeddability;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/books/Embeddability;

    return-object v0
.end method

.method public getEpubDownloadLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 570
    const-string v0, "http://schemas.google.com/books/2008/epubdownload"

    const-string v1, "application/epub"

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/books/VolumeEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getFormats()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Format;",
            ">;"
        }
    .end annotation

    .prologue
    .line 263
    const-class v0, Lcom/google/gdata/data/dublincore/Format;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifiers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Identifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 290
    const-class v0, Lcom/google/gdata/data/dublincore/Identifier;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInfoLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 579
    const-string v0, "http://schemas.google.com/books/2008/info"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/books/VolumeEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getLanguages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Language;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    const-class v0, Lcom/google/gdata/data/dublincore/Language;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOpenAccess()Lcom/google/gdata/data/books/OpenAccess;
    .locals 1

    .prologue
    .line 344
    const-class v0, Lcom/google/gdata/data/books/OpenAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/books/OpenAccess;

    return-object v0
.end method

.method public getPreviewLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 588
    const-string v0, "http://schemas.google.com/books/2008/preview"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/books/VolumeEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getPublishers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Publisher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    const-class v0, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRating()Lcom/google/gdata/data/extensions/Rating;
    .locals 1

    .prologue
    .line 402
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Rating;

    return-object v0
.end method

.method public getReview()Lcom/google/gdata/data/books/Review;
    .locals 1

    .prologue
    .line 433
    const-class v0, Lcom/google/gdata/data/books/Review;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/books/Review;

    return-object v0
.end method

.method public getSubjects()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Subject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 464
    const-class v0, Lcom/google/gdata/data/dublincore/Subject;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 598
    const-string v0, "http://schemas.google.com/books/2008/thumbnail"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/books/VolumeEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getTitles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/dublincore/Title;",
            ">;"
        }
    .end annotation

    .prologue
    .line 491
    const-class v0, Lcom/google/gdata/data/dublincore/Title;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getRepeatingExtension(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewability()Lcom/google/gdata/data/books/Viewability;
    .locals 1

    .prologue
    .line 518
    const-class v0, Lcom/google/gdata/data/books/Viewability;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/books/Viewability;

    return-object v0
.end method

.method public hasComments()Z
    .locals 1

    .prologue
    .line 142
    const-class v0, Lcom/google/gdata/data/extensions/Comments;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasCreators()Z
    .locals 1

    .prologue
    .line 169
    const-class v0, Lcom/google/gdata/data/dublincore/Creator;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDates()Z
    .locals 1

    .prologue
    .line 196
    const-class v0, Lcom/google/gdata/data/dublincore/Date;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDescriptions()Z
    .locals 1

    .prologue
    .line 223
    const-class v0, Lcom/google/gdata/data/dublincore/Description;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasEmbeddability()Z
    .locals 1

    .prologue
    .line 254
    const-class v0, Lcom/google/gdata/data/books/Embeddability;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasFormats()Z
    .locals 1

    .prologue
    .line 281
    const-class v0, Lcom/google/gdata/data/dublincore/Format;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasIdentifiers()Z
    .locals 1

    .prologue
    .line 308
    const-class v0, Lcom/google/gdata/data/dublincore/Identifier;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasLanguages()Z
    .locals 1

    .prologue
    .line 335
    const-class v0, Lcom/google/gdata/data/dublincore/Language;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasOpenAccess()Z
    .locals 1

    .prologue
    .line 366
    const-class v0, Lcom/google/gdata/data/books/OpenAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPublishers()Z
    .locals 1

    .prologue
    .line 393
    const-class v0, Lcom/google/gdata/data/dublincore/Publisher;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 424
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasReview()Z
    .locals 1

    .prologue
    .line 455
    const-class v0, Lcom/google/gdata/data/books/Review;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSubjects()Z
    .locals 1

    .prologue
    .line 482
    const-class v0, Lcom/google/gdata/data/dublincore/Subject;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTitles()Z
    .locals 1

    .prologue
    .line 509
    const-class v0, Lcom/google/gdata/data/dublincore/Title;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasRepeatingExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasViewability()Z
    .locals 1

    .prologue
    .line 540
    const-class v0, Lcom/google/gdata/data/books/Viewability;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setComments(Lcom/google/gdata/data/extensions/Comments;)V
    .locals 1
    .param p1, "comments"    # Lcom/google/gdata/data/extensions/Comments;

    .prologue
    .line 129
    if-nez p1, :cond_0

    .line 130
    const-class v0, Lcom/google/gdata/data/extensions/Comments;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->removeExtension(Ljava/lang/Class;)V

    .line 134
    :goto_0
    return-void

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/books/VolumeEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setEmbeddability(Lcom/google/gdata/data/books/Embeddability;)V
    .locals 1
    .param p1, "embeddability"    # Lcom/google/gdata/data/books/Embeddability;

    .prologue
    .line 241
    if-nez p1, :cond_0

    .line 242
    const-class v0, Lcom/google/gdata/data/books/Embeddability;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->removeExtension(Ljava/lang/Class;)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/books/VolumeEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setOpenAccess(Lcom/google/gdata/data/books/OpenAccess;)V
    .locals 1
    .param p1, "openAccess"    # Lcom/google/gdata/data/books/OpenAccess;

    .prologue
    .line 353
    if-nez p1, :cond_0

    .line 354
    const-class v0, Lcom/google/gdata/data/books/OpenAccess;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->removeExtension(Ljava/lang/Class;)V

    .line 358
    :goto_0
    return-void

    .line 356
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/books/VolumeEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setRating(Lcom/google/gdata/data/extensions/Rating;)V
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/data/extensions/Rating;

    .prologue
    .line 411
    if-nez p1, :cond_0

    .line 412
    const-class v0, Lcom/google/gdata/data/extensions/Rating;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->removeExtension(Ljava/lang/Class;)V

    .line 416
    :goto_0
    return-void

    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/books/VolumeEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setReview(Lcom/google/gdata/data/books/Review;)V
    .locals 1
    .param p1, "review"    # Lcom/google/gdata/data/books/Review;

    .prologue
    .line 442
    if-nez p1, :cond_0

    .line 443
    const-class v0, Lcom/google/gdata/data/books/Review;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->removeExtension(Ljava/lang/Class;)V

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/books/VolumeEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setViewability(Lcom/google/gdata/data/books/Viewability;)V
    .locals 1
    .param p1, "viewability"    # Lcom/google/gdata/data/books/Viewability;

    .prologue
    .line 527
    if-nez p1, :cond_0

    .line 528
    const-class v0, Lcom/google/gdata/data/books/Viewability;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/VolumeEntry;->removeExtension(Ljava/lang/Class;)V

    .line 532
    :goto_0
    return-void

    .line 530
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/books/VolumeEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{VolumeEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

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
    .line 603
    return-void
.end method
