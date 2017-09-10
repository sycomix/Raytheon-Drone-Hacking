.class public Lcom/google/gdata/data/extensions/EntryLink;
.super Lcom/google/gdata/data/Link;
.source "EntryLink.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "entryLink"
    nsAlias = "gd"
    nsUri = "http://schemas.google.com/g/2005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/EntryLink$Handler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/google/gdata/data/BaseEntry",
        "<*>;>",
        "Lcom/google/gdata/data/Link;"
    }
.end annotation


# instance fields
.field protected entry:Lcom/google/gdata/data/BaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;"
        }
    .end annotation
.end field

.field protected final entryClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field protected readOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    const-class v0, Lcom/google/gdata/data/Entry;

    invoke-direct {p0, v0}, Lcom/google/gdata/data/extensions/EntryLink;-><init>(Ljava/lang/Class;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    .local p1, "entryClass":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/google/gdata/data/extensions/EntryLink;->entryClass:Ljava/lang/Class;

    .line 65
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/google/gdata/data/extensions/EntryLink;

    invoke-static {v0}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 7
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->rel:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 109
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "rel"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/EntryLink;->rel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->href:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 113
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "href"

    iget-object v2, p0, Lcom/google/gdata/data/extensions/EntryLink;->href:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_1
    iget-boolean v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->readOnly:Z

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "readOnly"

    const-string/jumbo v2, "true"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_2
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "entryLink"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/EntryLink;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;

    if-eqz v0, :cond_4

    .line 123
    invoke-virtual {p2}, Lcom/google/gdata/data/ExtensionProfile;->getEntryLinkProfile()Lcom/google/gdata/data/ExtensionProfile;

    move-result-object v6

    .line 124
    .local v6, "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    if-nez v6, :cond_3

    .line 125
    move-object v6, p2

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {v0, p1, v6}, Lcom/google/gdata/data/BaseEntry;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 131
    .end local v6    # "nestedExtProfile":Lcom/google/gdata/data/ExtensionProfile;
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/EntryLink;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 133
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "entryLink"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public getEntry()Lcom/google/gdata/data/BaseEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 75
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;

    return-object v0
.end method

.method public getEntryClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->entryClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 141
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    new-instance v0, Lcom/google/gdata/data/extensions/EntryLink$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/EntryLink$Handler;-><init>(Lcom/google/gdata/data/extensions/EntryLink;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getReadOnly()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    iget-boolean v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->readOnly:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    invoke-static {}, Lcom/google/gdata/util/ContentType;->getAtomEntry()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setEntry(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    .local p1, "v":Lcom/google/gdata/data/BaseEntry;, "TE;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 70
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    iput-boolean p1, p0, Lcom/google/gdata/data/extensions/EntryLink;->readOnly:Z

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
    .line 96
    .local p0, "this":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<TE;>;"
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/gdata/data/extensions/EntryLink;->entry:Lcom/google/gdata/data/BaseEntry;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/extensions/EntryLink;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    .line 99
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/Link;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 100
    return-void
.end method
