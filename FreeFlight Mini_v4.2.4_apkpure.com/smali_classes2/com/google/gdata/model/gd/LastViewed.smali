.class public Lcom/google/gdata/model/gd/LastViewed;
.super Lcom/google/gdata/model/Element;
.source "LastViewed.java"


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Lcom/google/gdata/data/DateTime;",
            "Lcom/google/gdata/model/gd/LastViewed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "lastViewed"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/data/DateTime;

    const-class v2, Lcom/google/gdata/model/gd/LastViewed;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/LastViewed;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/google/gdata/model/gd/LastViewed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/gdata/model/gd/LastViewed;-><init>()V

    .line 89
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/LastViewed;->setValue(Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/model/gd/LastViewed;

    .line 90
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Lcom/google/gdata/data/DateTime;",
            "+",
            "Lcom/google/gdata/model/gd/LastViewed;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Lcom/google/gdata/data/DateTime;+Lcom/google/gdata/model/gd/LastViewed;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 65
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Lcom/google/gdata/data/DateTime;",
            "+",
            "Lcom/google/gdata/model/gd/LastViewed;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Lcom/google/gdata/data/DateTime;+Lcom/google/gdata/model/gd/LastViewed;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 80
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 3
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 45
    sget-object v1, Lcom/google/gdata/model/gd/LastViewed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/LastViewed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/google/gdata/model/ElementCreator;->setContentRequired(Z)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 51
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 128
    if-ne p0, p1, :cond_0

    .line 129
    const/4 v1, 0x1

    .line 135
    :goto_0
    return v1

    .line 131
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/gd/LastViewed;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 132
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 134
    check-cast v0, Lcom/google/gdata/model/gd/LastViewed;

    .line 135
    .local v0, "other":Lcom/google/gdata/model/gd/LastViewed;
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/LastViewed;->getValue()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/gd/LastViewed;->getValue()Lcom/google/gdata/data/DateTime;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/gdata/model/gd/LastViewed;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/google/gdata/model/gd/LastViewed;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 123
    invoke-super {p0}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 141
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/LastViewed;->getValue()Lcom/google/gdata/data/DateTime;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 142
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/gd/LastViewed;->getValue()Lcom/google/gdata/data/DateTime;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 144
    :cond_0
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/LastViewed;->lock()Lcom/google/gdata/model/gd/LastViewed;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/gd/LastViewed;
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/gd/LastViewed;

    return-object v0
.end method

.method public setValue(Lcom/google/gdata/data/DateTime;)Lcom/google/gdata/model/gd/LastViewed;
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 113
    invoke-super {p0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 114
    return-object p0
.end method
