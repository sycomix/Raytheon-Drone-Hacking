.class public Lcom/google/gdata/model/gd/MessageEntry;
.super Lcom/google/gdata/model/atom/Entry;
.source "MessageEntry.java"


# static fields
.field public static final CATEGORY:Lcom/google/gdata/model/atom/Category;

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/MessageEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/g/2005#message"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/google/gdata/model/atom/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/g/2005#message"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/atom/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/gdata/model/atom/Category;->lock()Lcom/google/gdata/model/atom/Category;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/MessageEntry;->CATEGORY:Lcom/google/gdata/model/atom/Category;

    .line 53
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {v0}, Lcom/google/gdata/model/ElementKey;->getId()Lcom/google/gdata/model/QName;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const-class v2, Lcom/google/gdata/model/gd/MessageEntry;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/MessageEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/google/gdata/model/gd/MessageEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 86
    sget-object v0, Lcom/google/gdata/model/gd/MessageEntry;->CATEGORY:Lcom/google/gdata/model/atom/Category;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/MessageEntry;->addCategory(Lcom/google/gdata/model/atom/Category;)V

    .line 87
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/MessageEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/MessageEntry;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 104
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/atom/Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/MessageEntry;",
            ">;",
            "Lcom/google/gdata/model/atom/Entry;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/MessageEntry;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/atom/Entry;)V
    .locals 1
    .param p1, "sourceEntry"    # Lcom/google/gdata/model/atom/Entry;

    .prologue
    .line 96
    sget-object v0, Lcom/google/gdata/model/gd/MessageEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/atom/Entry;)V

    .line 97
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 4
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 60
    sget-object v1, Lcom/google/gdata/model/gd/MessageEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/google/gdata/model/atom/Entry;->registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V

    .line 68
    sget-object v1, Lcom/google/gdata/model/gd/MessageEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 71
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/GeoPt;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 72
    sget-object v1, Lcom/google/gdata/model/gd/Rating;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 73
    sget-object v1, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    .line 74
    sget-object v1, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    sget-object v2, Lcom/google/gdata/model/ElementMetadata$Cardinality;->MULTIPLE:Lcom/google/gdata/model/ElementMetadata$Cardinality;

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setCardinality(Lcom/google/gdata/model/ElementMetadata$Cardinality;)Lcom/google/gdata/model/ElementCreator;

    .line 78
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    const-string v2, "http://schemas.google.com/g/2005#message"

    sget-object v3, Lcom/google/gdata/model/gd/MessageEntry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/gdata/model/MetadataRegistry;->adapt(Lcom/google/gdata/model/ElementKey;Ljava/lang/String;Lcom/google/gdata/model/ElementKey;)V

    goto :goto_0
.end method


# virtual methods
.method public addWhoList(Lcom/google/gdata/model/gd/Who;)Lcom/google/gdata/model/gd/MessageEntry;
    .locals 1
    .param p1, "whoList"    # Lcom/google/gdata/model/gd/Who;

    .prologue
    .line 228
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->addElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 229
    return-object p0
.end method

.method public clearWhoList()V
    .locals 1

    .prologue
    .line 246
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    .line 247
    return-void
.end method

.method public getGeoPt()Lcom/google/gdata/model/gd/GeoPt;
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/GeoPt;

    return-object v0
.end method

.method public getRating()Lcom/google/gdata/model/gd/Rating;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/Rating;

    return-object v0
.end method

.method public getTime()Lcom/google/gdata/model/gd/When;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/When;

    return-object v0
.end method

.method public getWhoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/model/gd/Who;",
            ">;"
        }
    .end annotation

    .prologue
    .line 219
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->getElements(Lcom/google/gdata/model/ElementKey;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasGeoPt()Z
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasRating()Z
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasTime()Z
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasWhoList()Z
    .locals 1

    .prologue
    .line 255
    sget-object v0, Lcom/google/gdata/model/gd/Who;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/atom/Entry;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/MessageEntry;->lock()Lcom/google/gdata/model/gd/MessageEntry;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/MessageEntry;
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/gdata/model/atom/Entry;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/MessageEntry;

    return-object v0
.end method

.method public removeWhoList(Lcom/google/gdata/model/gd/Who;)Z
    .locals 1
    .param p1, "whoList"    # Lcom/google/gdata/model/gd/Who;

    .prologue
    .line 239
    invoke-super {p0, p1}, Lcom/google/gdata/model/atom/Entry;->removeElement(Lcom/google/gdata/model/Element;)Z

    move-result v0

    return v0
.end method

.method public setGeoPt(Lcom/google/gdata/model/gd/GeoPt;)Lcom/google/gdata/model/gd/MessageEntry;
    .locals 1
    .param p1, "geoPt"    # Lcom/google/gdata/model/gd/GeoPt;

    .prologue
    .line 142
    sget-object v0, Lcom/google/gdata/model/gd/GeoPt;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 143
    return-object p0
.end method

.method public setRating(Lcom/google/gdata/model/gd/Rating;)Lcom/google/gdata/model/gd/MessageEntry;
    .locals 1
    .param p1, "rating"    # Lcom/google/gdata/model/gd/Rating;

    .prologue
    .line 171
    sget-object v0, Lcom/google/gdata/model/gd/Rating;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 172
    return-object p0
.end method

.method public setTime(Lcom/google/gdata/model/gd/When;)Lcom/google/gdata/model/gd/MessageEntry;
    .locals 1
    .param p1, "time"    # Lcom/google/gdata/model/gd/When;

    .prologue
    .line 200
    sget-object v0, Lcom/google/gdata/model/gd/When;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0, p1}, Lcom/google/gdata/model/atom/Entry;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 201
    return-object p0
.end method
