.class public Lcom/google/gdata/data/extensions/PostalAddress;
.super Ljava/lang/Object;
.source "PostalAddress.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/PostalAddress$1;,
        Lcom/google/gdata/data/extensions/PostalAddress$Handler;,
        Lcom/google/gdata/data/extensions/PostalAddress$Rel;
    }
.end annotation


# instance fields
.field protected label:Ljava/lang/String;

.field protected primary:Z

.field protected rel:Ljava/lang/String;

.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 70
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 71
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/PostalAddress;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 72
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 73
    const-string v1, "postalAddress"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 75
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 4
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PostalAddress;->rel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 84
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "rel"

    iget-object v3, p0, Lcom/google/gdata/data/extensions/PostalAddress;->rel:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PostalAddress;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "label"

    iget-object v3, p0, Lcom/google/gdata/data/extensions/PostalAddress;->label:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    :cond_1
    iget-boolean v1, p0, Lcom/google/gdata/data/extensions/PostalAddress;->primary:Z

    if-eqz v1, :cond_2

    .line 92
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "primary"

    iget-boolean v3, p0, Lcom/google/gdata/data/extensions/PostalAddress;->primary:Z

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_2
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "postalAddress"

    iget-object v3, p0, Lcom/google/gdata/data/extensions/PostalAddress;->value:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 102
    new-instance v0, Lcom/google/gdata/data/extensions/PostalAddress$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/data/extensions/PostalAddress$Handler;-><init>(Lcom/google/gdata/data/extensions/PostalAddress;Lcom/google/gdata/data/extensions/PostalAddress$1;)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PostalAddress;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/google/gdata/data/extensions/PostalAddress;->primary:Z

    return v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PostalAddress;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PostalAddress;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PostalAddress;->label:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/gdata/data/extensions/PostalAddress;->primary:Z

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PostalAddress;->rel:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PostalAddress;->value:Ljava/lang/String;

    return-void
.end method
