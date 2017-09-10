.class public Lcom/google/gdata/data/finance/PositionEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "PositionEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/finance/2007#position"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/finance/PositionEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/finance/2007#position"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/finance/2007#position"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/finance/PositionEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/google/gdata/data/finance/PositionEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/finance/PositionEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49
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
    .line 58
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 59
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    const-class v0, Lcom/google/gdata/data/finance/PositionEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 66
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 67
    const-class v0, Lcom/google/gdata/data/finance/PositionEntry;

    const-class v1, Lcom/google/gdata/data/finance/PositionFeedLink;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 68
    new-instance v0, Lcom/google/gdata/data/finance/PositionFeedLink;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/PositionFeedLink;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/PositionFeedLink;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 69
    const-class v0, Lcom/google/gdata/data/finance/PositionEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/finance/PositionData;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    new-instance v0, Lcom/google/gdata/data/finance/PositionData;

    invoke-direct {v0}, Lcom/google/gdata/data/finance/PositionData;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/finance/PositionData;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/finance/PositionEntry;

    invoke-static {v3, v2}, Lcom/google/gdata/data/finance/Symbol;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    goto :goto_0
.end method

.method public getFeedLink()Lcom/google/gdata/data/finance/PositionFeedLink;
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/google/gdata/data/finance/PositionFeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/PositionFeedLink;

    return-object v0
.end method

.method public getPositionData()Lcom/google/gdata/data/finance/PositionData;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/google/gdata/data/finance/PositionData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/PositionData;

    return-object v0
.end method

.method public getSymbol()Lcom/google/gdata/data/finance/Symbol;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/google/gdata/data/finance/Symbol;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/finance/Symbol;

    return-object v0
.end method

.method public hasFeedLink()Z
    .locals 1

    .prologue
    .line 105
    const-class v0, Lcom/google/gdata/data/finance/PositionFeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPositionData()Z
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/google/gdata/data/finance/PositionData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSymbol()Z
    .locals 1

    .prologue
    .line 167
    const-class v0, Lcom/google/gdata/data/finance/Symbol;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setFeedLink(Lcom/google/gdata/data/finance/PositionFeedLink;)V
    .locals 1
    .param p1, "feedLink"    # Lcom/google/gdata/data/finance/PositionFeedLink;

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    const-class v0, Lcom/google/gdata/data/finance/PositionFeedLink;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PositionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPositionData(Lcom/google/gdata/data/finance/PositionData;)V
    .locals 1
    .param p1, "positionData"    # Lcom/google/gdata/data/finance/PositionData;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const-class v0, Lcom/google/gdata/data/finance/PositionData;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PositionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSymbol(Lcom/google/gdata/data/finance/Symbol;)V
    .locals 1
    .param p1, "symbol"    # Lcom/google/gdata/data/finance/Symbol;

    .prologue
    .line 154
    if-nez p1, :cond_0

    .line 155
    const-class v0, Lcom/google/gdata/data/finance/Symbol;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/finance/PositionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/finance/PositionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{PositionEntry "

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
    .line 172
    return-void
.end method
