.class public abstract Lcom/google/gdata/data/AbstractExtension;
.super Ljava/lang/Object;
.source "AbstractExtension.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/AbstractExtension$AttributesHandler;
    }
.end annotation


# static fields
.field private static strictValidation:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private immutable:Z

.field protected final localName:Ljava/lang/String;

.field protected final namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/google/gdata/data/AbstractExtension$1;

    invoke-direct {v0}, Lcom/google/gdata/data/AbstractExtension$1;-><init>()V

    sput-object v0, Lcom/google/gdata/data/AbstractExtension;->strictValidation:Ljava/lang/ThreadLocal;

    return-void
.end method

.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 84
    .local v1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/google/gdata/data/AbstractExtension;>;"
    const-class v2, Lcom/google/gdata/data/ExtensionDescription$Default;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/ExtensionDescription$Default;

    .line 86
    .local v0, "defAnnot":Lcom/google/gdata/data/ExtensionDescription$Default;
    if-eqz v0, :cond_0

    .line 87
    new-instance v2, Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-interface {v0}, Lcom/google/gdata/data/ExtensionDescription$Default;->nsAlias()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/google/gdata/data/ExtensionDescription$Default;->nsUri()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/gdata/util/common/xml/XmlNamespace;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/gdata/data/AbstractExtension;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 89
    invoke-interface {v0}, Lcom/google/gdata/data/ExtensionDescription$Default;->localName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/gdata/data/AbstractExtension;->localName:Ljava/lang/String;

    .line 94
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-object v3, p0, Lcom/google/gdata/data/AbstractExtension;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 92
    iput-object v3, p0, Lcom/google/gdata/data/AbstractExtension;->localName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V
    .locals 0
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "localName"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/google/gdata/data/AbstractExtension;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    .line 106
    iput-object p2, p0, Lcom/google/gdata/data/AbstractExtension;->localName:Ljava/lang/String;

    .line 107
    return-void
.end method

.method static synthetic access$000(Lcom/google/gdata/data/AbstractExtension;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/gdata/data/AbstractExtension;

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/gdata/data/AbstractExtension;->immutable:Z

    return v0
.end method

.method public static final disableStrictValidation()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Lcom/google/gdata/data/AbstractExtension;->strictValidation:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 65
    return-void
.end method

.method public static final enableStrictValidation()V
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/google/gdata/data/AbstractExtension;->strictValidation:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method protected static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "o1"    # Ljava/lang/Object;
    .param p1, "o2"    # Ljava/lang/Object;

    .prologue
    .line 315
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static final isStrictValidation()Z
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lcom/google/gdata/data/AbstractExtension;->strictValidation:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected static final throwExceptionForMissingAttribute(Ljava/lang/String;)V
    .locals 3
    .param p0, "attrName"    # Ljava/lang/String;

    .prologue
    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 157
    return-void
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 8
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/gdata/data/AbstractExtension;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    if-nez v0, :cond_0

    .line 184
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 185
    .local v7, "name":Ljava/lang/String;
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No @ExtensionDescription.Default annotation found on subclass "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v7, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v7, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    .end local v7    # "name":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/google/gdata/data/AbstractExtension;->isStrictValidation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lcom/google/gdata/data/AbstractExtension;->validate()V

    .line 195
    :cond_1
    new-instance v6, Lcom/google/gdata/data/AttributeGenerator;

    invoke-direct {v6}, Lcom/google/gdata/data/AttributeGenerator;-><init>()V

    .line 196
    .local v6, "generator":Lcom/google/gdata/data/AttributeGenerator;
    invoke-virtual {p0, v6}, Lcom/google/gdata/data/AbstractExtension;->putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V

    .line 198
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v5, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-virtual {p0, v5, v6}, Lcom/google/gdata/data/AbstractExtension;->generateAttributes(Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V

    .line 202
    iget-object v3, p0, Lcom/google/gdata/data/AbstractExtension;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    iget-object v4, p0, Lcom/google/gdata/data/AbstractExtension;->localName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/gdata/data/AbstractExtension;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V

    .line 203
    return-void
.end method

.method protected generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 1
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p3, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p4, "localName"    # Ljava/lang/String;
    .param p6, "generator"    # Lcom/google/gdata/data/AttributeGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/util/common/xml/XmlWriter;",
            "Lcom/google/gdata/data/ExtensionProfile;",
            "Lcom/google/gdata/util/common/xml/XmlNamespace;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Lcom/google/gdata/data/AttributeGenerator;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    .local p5, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-virtual {p6}, Lcom/google/gdata/data/AttributeGenerator;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, p4, p5, v0}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method protected generateAttributes(Ljava/util/List;Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 5
    .param p2, "generator"    # Lcom/google/gdata/data/AttributeGenerator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;",
            ">;",
            "Lcom/google/gdata/data/AttributeGenerator;",
            ")V"
        }
    .end annotation

    .prologue
    .line 210
    .local p1, "attrs":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    invoke-virtual {p2}, Lcom/google/gdata/data/AttributeGenerator;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 212
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 213
    new-instance v4, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v4, v3, v2}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public final getExtensionLocalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/google/gdata/data/AbstractExtension;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public final getExtensionNamespace()Lcom/google/gdata/util/common/xml/XmlNamespace;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/gdata/data/AbstractExtension;->namespace:Lcom/google/gdata/util/common/xml/XmlNamespace;

    return-object v0
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v0, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;

    invoke-direct {v0, p0, p4}, Lcom/google/gdata/data/AbstractExtension$AttributesHandler;-><init>(Lcom/google/gdata/data/AbstractExtension;Lorg/xml/sax/Attributes;)V

    return-object v0
.end method

.method public final isImmutable()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/google/gdata/data/AbstractExtension;->immutable:Z

    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 0
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 143
    return-void
.end method

.method protected sameClassAs(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 306
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setImmutable(Z)V
    .locals 0
    .param p1, "isImmutable"    # Z

    .prologue
    .line 74
    iput-boolean p1, p0, Lcom/google/gdata/data/AbstractExtension;->immutable:Z

    .line 75
    return-void
.end method

.method protected final throwExceptionIfImmutable()V
    .locals 3

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/google/gdata/data/AbstractExtension;->immutable:Z

    if-eqz v0, :cond_0

    .line 283
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/google/gdata/data/AbstractExtension;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instance is read only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_0
    return-void
.end method

.method protected validate()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 132
    return-void
.end method
