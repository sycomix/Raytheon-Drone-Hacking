.class public Lcom/google/gdata/data/photos/TagEntry;
.super Lcom/google/gdata/data/photos/GphotoEntry;
.source "TagEntry.java"

# interfaces
.implements Lcom/google/gdata/data/photos/AtomData;
.implements Lcom/google/gdata/data/photos/TagData;


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/photos/2007#tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/photos/GphotoEntry",
        "<",
        "Lcom/google/gdata/data/photos/TagEntry;",
        ">;",
        "Lcom/google/gdata/data/photos/AtomData;",
        "Lcom/google/gdata/data/photos/TagData;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#tag"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#tag"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/TagEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/TagEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/TagEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
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
    .line 60
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 61
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 65
    const-class v0, Lcom/google/gdata/data/photos/TagEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 69
    const-class v0, Lcom/google/gdata/data/photos/TagEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoWeight;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getWeight()Ljava/lang/Integer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/TagEntry;->getWeightExt()Lcom/google/gdata/data/photos/GphotoWeight;

    move-result-object v0

    .line 118
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoWeight;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoWeight;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getWeightExt()Lcom/google/gdata/data/photos/GphotoWeight;
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/google/gdata/data/photos/GphotoWeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/TagEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoWeight;

    return-object v0
.end method

.method public hasWeightExt()Z
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/google/gdata/data/photos/GphotoWeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/TagEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setWeight(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "weight"    # Ljava/lang/Integer;

    .prologue
    .line 122
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 123
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoWeight;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/TagEntry;->setWeightExt(Lcom/google/gdata/data/photos/GphotoWeight;)V

    .line 124
    return-void

    .line 122
    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoWeight;
    :cond_0
    new-instance v0, Lcom/google/gdata/data/photos/GphotoWeight;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoWeight;-><init>(Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public setWeightExt(Lcom/google/gdata/data/photos/GphotoWeight;)V
    .locals 1
    .param p1, "weightExt"    # Lcom/google/gdata/data/photos/GphotoWeight;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 88
    const-class v0, Lcom/google/gdata/data/photos/GphotoWeight;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/TagEntry;->removeExtension(Ljava/lang/Class;)V

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/TagEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{TagEntry "

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
    .line 105
    return-void
.end method
