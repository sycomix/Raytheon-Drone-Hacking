.class public Lcom/google/gdata/model/atompub/Draft;
.super Lcom/google/gdata/model/Element;
.source "Draft.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/model/atompub/Draft$Value;
    }
.end annotation


# static fields
.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Lcom/google/gdata/model/atompub/Draft$Value;",
            "Lcom/google/gdata/model/atompub/Draft;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->atomPubStandardNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "draft"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/model/atompub/Draft$Value;

    const-class v2, Lcom/google/gdata/model/atompub/Draft;

    invoke-static {v0, v1, v2}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 99
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Lcom/google/gdata/model/atompub/Draft$Value;",
            "+",
            "Lcom/google/gdata/model/atompub/Draft;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Lcom/google/gdata/model/atompub/Draft$Value;+Lcom/google/gdata/model/atompub/Draft;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 106
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
            "Lcom/google/gdata/model/atompub/Draft$Value;",
            "+",
            "Lcom/google/gdata/model/atompub/Draft;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 120
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<Lcom/google/gdata/model/atompub/Draft$Value;+Lcom/google/gdata/model/atompub/Draft;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/model/atompub/Draft$Value;)V
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/model/atompub/Draft$Value;

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/google/gdata/model/atompub/Draft;-><init>()V

    .line 130
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atompub/Draft;->setValue(Lcom/google/gdata/model/atompub/Draft$Value;)Lcom/google/gdata/model/atompub/Draft;

    .line 131
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 86
    sget-object v1, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    sget-object v1, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 92
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 169
    if-ne p0, p1, :cond_0

    .line 170
    const/4 v1, 0x1

    .line 176
    :goto_0
    return v1

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/atompub/Draft;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 173
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 175
    check-cast v0, Lcom/google/gdata/model/atompub/Draft;

    .line 176
    .local v0, "other":Lcom/google/gdata/model/atompub/Draft;
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Draft;->getValue()Lcom/google/gdata/model/atompub/Draft$Value;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/gdata/model/atompub/Draft;->getValue()Lcom/google/gdata/model/atompub/Draft$Value;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/gdata/model/atompub/Draft;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getValue()Lcom/google/gdata/model/atompub/Draft$Value;
    .locals 1

    .prologue
    .line 144
    sget-object v0, Lcom/google/gdata/model/atompub/Draft;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-super {p0, v0}, Lcom/google/gdata/model/Element;->getTextValue(Lcom/google/gdata/model/ElementKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Draft$Value;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/gdata/model/Element;->hasTextValue()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 182
    .local v0, "result":I
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Draft;->getValue()Lcom/google/gdata/model/atompub/Draft$Value;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    mul-int/lit8 v1, v0, 0x25

    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Draft;->getValue()Lcom/google/gdata/model/atompub/Draft$Value;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gdata/model/atompub/Draft$Value;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 185
    :cond_0
    return v0
.end method

.method public bridge synthetic lock()Lcom/google/gdata/model/Element;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0}, Lcom/google/gdata/model/atompub/Draft;->lock()Lcom/google/gdata/model/atompub/Draft;

    move-result-object v0

    return-object v0
.end method

.method public lock()Lcom/google/gdata/model/atompub/Draft;
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/google/gdata/model/Element;->lock()Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atompub/Draft;

    return-object v0
.end method

.method public setValue(Lcom/google/gdata/model/atompub/Draft$Value;)Lcom/google/gdata/model/atompub/Draft;
    .locals 0
    .param p1, "value"    # Lcom/google/gdata/model/atompub/Draft$Value;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/google/gdata/model/Element;->setTextValue(Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 155
    return-object p0
.end method
