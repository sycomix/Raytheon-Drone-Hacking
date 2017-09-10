.class public Lcom/google/gdata/data/maps/FeatureFeed;
.super Lcom/google/gdata/data/BaseFeed;
.source "FeatureFeed.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/maps/2008#feature"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseFeed",
        "<",
        "Lcom/google/gdata/data/maps/FeatureFeed;",
        "Lcom/google/gdata/data/maps/FeatureEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private isKmlDefault:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    const-class v0, Lcom/google/gdata/data/maps/FeatureEntry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/maps/FeatureFeed;->isKmlDefault:Z

    .line 36
    invoke-virtual {p0}, Lcom/google/gdata/data/maps/FeatureFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/maps/FeatureEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    const-class v0, Lcom/google/gdata/data/maps/FeatureEntry;

    invoke-direct {p0, v0, p1}, Lcom/google/gdata/data/BaseFeed;-><init>(Ljava/lang/Class;Lcom/google/gdata/data/BaseFeed;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/maps/FeatureFeed;->isKmlDefault:Z

    .line 47
    return-void
.end method


# virtual methods
.method public generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/google/gdata/data/maps/FeatureFeed;->isKmlDefault:Z

    if-eqz v0, :cond_0

    .line 81
    sget-object v0, Lcom/google/gdata/data/maps/DataConstants;->KML_NAMESPACE:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->setDefaultNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/BaseFeed;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 84
    return-void
.end method

.method public getAtomFeedLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 57
    const-string v0, "http://schemas.google.com/g/2005#feed"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/maps/FeatureFeed;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public setKmlDefault(Z)V
    .locals 0
    .param p1, "isDefault"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/google/gdata/data/maps/FeatureFeed;->isKmlDefault:Z

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{FeatureFeed "

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
