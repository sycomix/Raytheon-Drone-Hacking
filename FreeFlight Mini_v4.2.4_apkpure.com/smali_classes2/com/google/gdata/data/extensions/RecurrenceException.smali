.class public Lcom/google/gdata/data/extensions/RecurrenceException;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "RecurrenceException.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/extensions/RecurrenceException$Handler;
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

.field protected isSpecialized:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 101
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 59
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/extensions/RecurrenceException;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 60
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 61
    const-string v1, "recurrenceException"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 63
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
    .line 78
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v4, "attrs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    new-instance v0, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v1, "specialized"

    iget-boolean v2, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->isSpecialized:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v2, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v3, "recurrenceException"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/gdata/data/extensions/RecurrenceException;->generateStartElement(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 84
    iget-object v0, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    invoke-virtual {v0, p1, p2}, Lcom/google/gdata/data/extensions/EntryLink;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 89
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/extensions/RecurrenceException;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 91
    sget-object v0, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v1, "recurrenceException"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 92
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
    .line 53
    iget-object v0, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 97
    new-instance v0, Lcom/google/gdata/data/extensions/RecurrenceException$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/extensions/RecurrenceException$Handler;-><init>(Lcom/google/gdata/data/extensions/RecurrenceException;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getSpecialized()Z
    .locals 1

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->isSpecialized:Z

    return v0
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
    .line 54
    .local p1, "v":Lcom/google/gdata/data/extensions/EntryLink;, "Lcom/google/gdata/data/extensions/EntryLink<*>;"
    iput-object p1, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    return-void
.end method

.method public setSpecialized(Z)V
    .locals 0
    .param p1, "v"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->isSpecialized:Z

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
    .line 68
    iget-object v0, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/google/gdata/data/extensions/RecurrenceException;->entryLink:Lcom/google/gdata/data/extensions/EntryLink;

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/extensions/RecurrenceException;->visitChild(Lcom/google/gdata/data/ExtensionVisitor;Lcom/google/gdata/data/Extension;)V

    .line 71
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/ExtensionPoint;->visitChildren(Lcom/google/gdata/data/ExtensionVisitor;)V

    .line 72
    return-void
.end method
