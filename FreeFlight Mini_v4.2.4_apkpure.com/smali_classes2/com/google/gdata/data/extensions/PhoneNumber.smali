.class public Lcom/google/gdata/data/extensions/PhoneNumber;
.super Ljava/lang/Object;
.source "PhoneNumber.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/PhoneNumber$1;,
        Lcom/google/gdata/data/extensions/PhoneNumber$Handler;,
        Lcom/google/gdata/data/extensions/PhoneNumber$Rel;
    }
.end annotation


# instance fields
.field protected label:Ljava/lang/String;

.field protected phoneNumber:Ljava/lang/String;

.field protected primary:Z

.field protected rel:Ljava/lang/String;

.field protected uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 93
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 94
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/PhoneNumber;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 95
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 96
    const-string v1, "phoneNumber"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 97
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 98
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
    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->rel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 107
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "rel"

    iget-object v3, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->rel:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->label:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 111
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "label"

    iget-object v3, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->label:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->uri:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 115
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "uri"

    iget-object v3, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->uri:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_2
    iget-boolean v1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->primary:Z

    if-eqz v1, :cond_3

    .line 119
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "primary"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_3
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "phoneNumber"

    iget-object v3, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 129
    new-instance v0, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/gdata/data/extensions/PhoneNumber$Handler;-><init>(Lcom/google/gdata/data/extensions/PhoneNumber;Lcom/google/gdata/data/extensions/PhoneNumber$1;)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimary()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->primary:Z

    return v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->label:Ljava/lang/String;

    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->phoneNumber:Ljava/lang/String;

    return-void
.end method

.method public setPrimary(Z)V
    .locals 0
    .param p1, "p"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->primary:Z

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->rel:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/gdata/data/extensions/PhoneNumber;->uri:Ljava/lang/String;

    return-void
.end method
