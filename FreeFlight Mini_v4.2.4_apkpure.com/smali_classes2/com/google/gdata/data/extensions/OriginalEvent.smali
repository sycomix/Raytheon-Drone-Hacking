.class public Lcom/google/gdata/data/extensions/OriginalEvent;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "OriginalEvent.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/OriginalEvent$Handler;
    }
.end annotation


# instance fields
.field protected href:Ljava/lang/String;

.field protected originalId:Ljava/lang/String;

.field protected originalStartTime:Lcom/google/gdata/data/extensions/When;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 99
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 58
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/OriginalEvent;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 59
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 60
    const-string v1, "originalEvent"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 62
    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 6
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "id"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->href:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "href"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->href:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    :cond_1
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "originalEvent"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/OriginalEvent;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 80
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalStartTime:Lcom/google/gdata/data/extensions/When;

    if-eqz v0, :cond_2

    .line 81
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalStartTime:Lcom/google/gdata/data/extensions/When;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/extensions/When;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 85
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/OriginalEvent;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 87
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "originalEvent"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 95
    new-instance v0, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/OriginalEvent$Handler;-><init>(Lcom/google/gdata/data/extensions/OriginalEvent;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->href:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalId:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalStartTime()Lcom/google/gdata/data/extensions/When;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalStartTime:Lcom/google/gdata/data/extensions/When;

    return-object v0
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->href:Ljava/lang/String;

    return-void
.end method

.method public setOriginalId(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalId:Ljava/lang/String;

    return-void
.end method

.method public setOriginalStartTime(Lcom/google/gdata/data/extensions/When;)V
    .locals 0
    .param p1, "v"    # Lcom/google/gdata/data/extensions/When;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/google/gdata/data/extensions/OriginalEvent;->originalStartTime:Lcom/google/gdata/data/extensions/When;

    return-void
.end method
