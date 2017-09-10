.class public Lcom/google/gdata/model/gd/EntryLink;
.super Lcom/google/gdata/model/Element;
.source "EntryLink.java"

# interfaces
.implements Lcom/google/gdata/data/ILink;


# static fields
.field public static final HREF:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY:Lcom/google/gdata/model/ElementKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/ElementKey",
            "<",
            "Ljava/lang/Void;",
            "Lcom/google/gdata/model/gd/EntryLink;",
            ">;"
        }
    .end annotation
.end field

.field public static final READ_ONLY:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final REL:Lcom/google/gdata/model/AttributeKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gdata/model/AttributeKey",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 40
    new-instance v0, Lcom/google/gdata/model/QName;

    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "entryLink"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/model/QName;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    const-class v1, Lcom/google/gdata/model/gd/EntryLink;

    invoke-static {v0, v1}, Lcom/google/gdata/model/ElementKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/ElementKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/EntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    .line 46
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "href"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/EntryLink;->HREF:Lcom/google/gdata/model/AttributeKey;

    .line 52
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "readOnly"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;Ljava/lang/Class;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/EntryLink;->READ_ONLY:Lcom/google/gdata/model/AttributeKey;

    .line 58
    new-instance v0, Lcom/google/gdata/model/QName;

    const-string v1, "rel"

    invoke-direct {v0, v1}, Lcom/google/gdata/model/QName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/gdata/model/AttributeKey;->of(Lcom/google/gdata/model/QName;)Lcom/google/gdata/model/AttributeKey;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/gd/EntryLink;->REL:Lcom/google/gdata/model/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-direct {p0, v0}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 81
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/EntryLink;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/EntryLink;>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;)V

    .line 88
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V
    .locals 0
    .param p2, "source"    # Lcom/google/gdata/model/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/model/ElementKey",
            "<*+",
            "Lcom/google/gdata/model/gd/EntryLink;",
            ">;",
            "Lcom/google/gdata/model/Element;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "key":Lcom/google/gdata/model/ElementKey;, "Lcom/google/gdata/model/ElementKey<*+Lcom/google/gdata/model/gd/EntryLink;>;"
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/model/Element;-><init>(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)V

    .line 100
    return-void
.end method

.method public static registerMetadata(Lcom/google/gdata/model/MetadataRegistry;)V
    .locals 2
    .param p0, "registry"    # Lcom/google/gdata/model/MetadataRegistry;

    .prologue
    .line 65
    sget-object v1, Lcom/google/gdata/model/gd/EntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->isRegistered(Lcom/google/gdata/model/ElementKey;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    :goto_0
    return-void

    .line 69
    :cond_0
    sget-object v1, Lcom/google/gdata/model/gd/EntryLink;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/MetadataRegistry;->build(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    move-result-object v0

    .line 70
    .local v0, "builder":Lcom/google/gdata/model/ElementCreator;
    sget-object v1, Lcom/google/gdata/model/gd/EntryLink;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 71
    sget-object v1, Lcom/google/gdata/model/gd/EntryLink;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 72
    sget-object v1, Lcom/google/gdata/model/gd/EntryLink;->READ_ONLY:Lcom/google/gdata/model/AttributeKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addAttribute(Lcom/google/gdata/model/AttributeKey;)Lcom/google/gdata/model/AttributeCreator;

    .line 73
    sget-object v1, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-interface {v0, v1}, Lcom/google/gdata/model/ElementCreator;->addElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/ElementCreator;

    goto :goto_0
.end method


# virtual methods
.method public getEntry()Lcom/google/gdata/model/atom/Entry;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->getElement(Lcom/google/gdata/model/ElementKey;)Lcom/google/gdata/model/Element;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/model/atom/Entry;

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getReadOnly()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 162
    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->READ_ONLY:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    invoke-static {}, Lcom/google/gdata/util/ContentType;->getAtomFeed()Lcom/google/gdata/util/ContentType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/util/ContentType;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasEntry()Z
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->hasElement(Lcom/google/gdata/model/ElementKey;)Z

    move-result v0

    return v0
.end method

.method public hasHref()Z
    .locals 1

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/EntryLink;->getHref()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasReadOnly()Z
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/EntryLink;->getReadOnly()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRel()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/gdata/model/gd/EntryLink;->getRel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEntry(Lcom/google/gdata/model/atom/Entry;)V
    .locals 1
    .param p1, "entry"    # Lcom/google/gdata/model/atom/Entry;

    .prologue
    .line 117
    sget-object v0, Lcom/google/gdata/model/atom/Entry;->KEY:Lcom/google/gdata/model/ElementKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/gd/EntryLink;->setElement(Lcom/google/gdata/model/ElementKey;Lcom/google/gdata/model/Element;)Lcom/google/gdata/model/Element;

    .line 118
    return-void
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 144
    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/gd/EntryLink;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 145
    return-void
.end method

.method public setReadOnly(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "readOnly"    # Ljava/lang/Boolean;

    .prologue
    .line 172
    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->READ_ONLY:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/gd/EntryLink;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 173
    return-void
.end method

.method public setRel(Ljava/lang/String;)V
    .locals 1
    .param p1, "rel"    # Ljava/lang/String;

    .prologue
    .line 199
    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/model/gd/EntryLink;->setAttributeValue(Lcom/google/gdata/model/AttributeKey;Ljava/lang/Object;)Lcom/google/gdata/model/Element;

    .line 200
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type property not modifiable in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/google/gdata/model/gd/FeedLink;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{EntryLink href="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->HREF:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " readOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/model/gd/EntryLink;->READ_ONLY:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v1}, Lcom/google/gdata/model/gd/EntryLink;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " rel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/google/gdata/model/gd/EntryLink;->REL:Lcom/google/gdata/model/AttributeKey;

    invoke-virtual {p0, v0}, Lcom/google/gdata/model/gd/EntryLink;->getAttributeValue(Lcom/google/gdata/model/AttributeKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
