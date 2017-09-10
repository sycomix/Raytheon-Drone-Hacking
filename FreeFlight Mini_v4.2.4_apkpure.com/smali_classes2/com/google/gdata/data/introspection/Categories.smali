.class public Lcom/google/gdata/data/introspection/Categories;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Categories.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/introspection/Categories$Handler;
    }
.end annotation


# instance fields
.field private atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;"
        }
    .end annotation
.end field

.field private defaultScheme:Ljava/lang/String;

.field private fixed:Ljava/lang/Boolean;

.field private href:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "href"    # Ljava/lang/String;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 81
    iput-object p1, p0, Lcom/google/gdata/data/introspection/Categories;->href:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public varargs constructor <init>(ZLjava/lang/String;[Lcom/google/gdata/data/Category;)V
    .locals 1
    .param p1, "fixed"    # Z
    .param p2, "defaultScheme"    # Ljava/lang/String;
    .param p3, "categories"    # [Lcom/google/gdata/data/Category;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 47
    invoke-static {}, Lcom/google/gdata/util/Namespaces;->getAtomPubNs()Lcom/google/gdata/util/common/xml/XmlNamespace;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->fixed:Ljava/lang/Boolean;

    .line 69
    iput-object p2, p0, Lcom/google/gdata/data/introspection/Categories;->defaultScheme:Ljava/lang/String;

    .line 70
    array-length v0, p3

    if-eqz v0, :cond_0

    .line 71
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->categories:Ljava/util/List;

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public addCategory(Lcom/google/gdata/data/Category;)V
    .locals 1
    .param p1, "category"    # Lcom/google/gdata/data/Category;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->categories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->categories:Ljava/util/List;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->categories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 4
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 141
    const-string v2, "href"

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/data/introspection/Categories;->href:Ljava/lang/String;

    .line 142
    const-string v2, "scheme"

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/data/introspection/Categories;->defaultScheme:Ljava/lang/String;

    .line 143
    const-string v2, "fixed"

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "fixedValue":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 145
    const-string v2, "yes"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/data/introspection/Categories;->fixed:Ljava/lang/Boolean;

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v2, "no"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/data/introspection/Categories;->fixed:Ljava/lang/Boolean;

    goto :goto_0

    .line 150
    :cond_2
    new-instance v1, Lcom/google/gdata/util/ParseException;

    sget-object v2, Lcom/google/gdata/client/CoreErrorDomain;->ERR:Lcom/google/gdata/client/CoreErrorDomain;

    iget-object v2, v2, Lcom/google/gdata/client/CoreErrorDomain;->invalidFixedAttribute:Lcom/google/gdata/util/ErrorDomain$ErrorCode;

    invoke-direct {v1, v2}, Lcom/google/gdata/util/ParseException;-><init>(Lcom/google/gdata/util/ErrorContent;)V

    .line 152
    .local v1, "pe":Lcom/google/gdata/util/ParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value for fixed attribute:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gdata/util/ParseException;->setInternalReason(Ljava/lang/String;)V

    .line 154
    throw v1
.end method

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
    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v0, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v3, p0, Lcom/google/gdata/data/introspection/Categories;->fixed:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 197
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v5, "fixed"

    iget-object v3, p0, Lcom/google/gdata/data/introspection/Categories;->fixed:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "yes"

    :goto_0
    invoke-direct {v4, v5, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_0
    iget-object v3, p0, Lcom/google/gdata/data/introspection/Categories;->defaultScheme:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 200
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v4, "scheme"

    iget-object v5, p0, Lcom/google/gdata/data/introspection/Categories;->defaultScheme:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    iget-object v3, p0, Lcom/google/gdata/data/introspection/Categories;->href:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 203
    new-instance v3, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v4, "href"

    iget-object v5, p0, Lcom/google/gdata/data/introspection/Categories;->href:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_2
    iget-object v3, p0, Lcom/google/gdata/data/introspection/Categories;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v4, "categories"

    const/4 v5, 0x0

    invoke-virtual {p1, v3, v4, v0, v5}, Lcom/google/gdata/util/common/xml/XmlWriter;->startElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 207
    iget-object v3, p0, Lcom/google/gdata/data/introspection/Categories;->categories:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 208
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->startRepeatingElement()V

    .line 209
    iget-object v3, p0, Lcom/google/gdata/data/introspection/Categories;->categories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/Category;

    .line 210
    .local v1, "category":Lcom/google/gdata/data/Category;
    invoke-virtual {v1, p1}, Lcom/google/gdata/data/Category;->generateAtom(Lcom/google/gdata/util/common/xml/XmlWriter;)V

    goto :goto_1

    .line 197
    .end local v1    # "category":Lcom/google/gdata/data/Category;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_3
    const-string v3, "no"

    goto :goto_0

    .line 212
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {p1}, Lcom/google/gdata/util/common/xml/XmlWriter;->endRepeatingElement()V

    .line 215
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/google/gdata/data/introspection/Categories;->generateExtensions(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 217
    iget-object v3, p0, Lcom/google/gdata/data/introspection/Categories;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v4, "categories"

    invoke-virtual {p1, v3, v4}, Lcom/google/gdata/util/common/xml/XmlWriter;->endElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public getCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultScheme()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->defaultScheme:Ljava/lang/String;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 135
    new-instance v0, Lcom/google/gdata/data/introspection/Categories$Handler;

    invoke-direct {v0, p0, p1, p4}, Lcom/google/gdata/data/introspection/Categories$Handler;-><init>(Lcom/google/gdata/data/introspection/Categories;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method public getHref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->href:Ljava/lang/String;

    return-object v0
.end method

.method public isFixed()Z
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->fixed:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->fixed:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseAtom(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/XmlParser;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "parser"    # Lcom/google/gdata/util/XmlParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/google/gdata/data/introspection/Categories$Handler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/gdata/data/introspection/Categories$Handler;-><init>(Lcom/google/gdata/data/introspection/Categories;Lcom/google/gdata/data/ExtensionProfile;Lorg/xml/sax/Attributes;)V

    .line 180
    .local v0, "handler":Lcom/google/gdata/data/introspection/Categories$Handler;
    iget-object v1, p0, Lcom/google/gdata/data/introspection/Categories;->atomPubNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v1}, Lcom/google/gdata/util/common/xml/XmlNamespace;->getUri()Ljava/lang/String;

    move-result-object v1

    const-string v2, "categories"

    invoke-virtual {p2, v0, v1, v2}, Lcom/google/gdata/util/XmlParser;->parse(Lcom/google/gdata/util/XmlParser$ElementHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method public validate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->href:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->fixed:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->defaultScheme:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/introspection/Categories;->categories:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 163
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The href attribute cannot be used with other attributes or nested category elements"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_1
    return-void
.end method
