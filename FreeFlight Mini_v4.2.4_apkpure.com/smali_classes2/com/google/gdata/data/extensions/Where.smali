.class public Lcom/google/gdata/data/extensions/Where;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Where.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/Where$Handler;,
        Lcom/google/gdata/data/extensions/Where$Rel;
    }
.end annotation


# instance fields
.field protected entryLink:Lcom/google/gdata/data/extensions/EntryLink;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/extensions/EntryLink",
            "<*>;"
        }
    .end annotation
.end field

.field protected label:Ljava/lang/String;

.field protected rel:Ljava/lang/String;

.field protected valueString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "rel"    # Ljava/lang/String;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "valueString"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Where;->rel:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/google/gdata/data/extensions/Where;->label:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/google/gdata/data/extensions/Where;->valueString:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 90
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/Where;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 91
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 92
    const-string v1, "where"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 93
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 94
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
    .line 109
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->rel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "rel"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Where;->rel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->label:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 116
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "label"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Where;->label:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->valueString:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 120
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "valueString"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/Where;->valueString:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_2
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "where"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/Where;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 125
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/extensions/EntryLink;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 130
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/Where;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 132
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "where"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public getEntryLink()Lcom/google/gdata/data/extensions/EntryLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/EntryLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 138
    new-instance v0, Lcom/google/gdata/data/extensions/Where$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/Where$Handler;-><init>(Lcom/google/gdata/data/extensions/Where;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->rel:Ljava/lang/String;

    return-object v0
.end method

.method public getValueString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->valueString:Ljava/lang/String;

    return-object v0
.end method

.method public setEntryLink(Lcom/google/gdata/data/extensions/EntryLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/extensions/EntryLink",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "v":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<*>;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Where;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Where;->label:Ljava/lang/String;

    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Where;->rel:Ljava/lang/String;

    return-void
.end method

.method public setValueString(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/gdata/data/extensions/Where;->valueString:Ljava/lang/String;

    return-void
.end method

.method protected visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V
    .locals 1
    .param p1, "ev"    # Lcom/google/gdata/data/ExtensionVisitor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/data/ExtensionVisitor$StoppedException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/google/gdata/data/extensions/Where;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/extensions/Where;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    .line 102
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 103
    return-void
.end method
