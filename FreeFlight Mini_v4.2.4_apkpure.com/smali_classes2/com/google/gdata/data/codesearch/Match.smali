.class public Lcom/google/gdata/data/codesearch/Match;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "Match.java"

# interfaces
.implements Lcom/google/gdata/data/Extension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/codesearch/Match$Handler;
    }
.end annotation


# static fields
.field public static final ATTRIBUTE_LINENUMBER:Ljava/lang/String; = "lineNumber"

.field public static final EXTENSION_MATCH:Ljava/lang/String; = "match"


# instance fields
.field protected lineNumber:Ljava/lang/String;

.field protected lineText:Lcom/google/gdata/data/HtmlTextConstruct;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 93
    return-void
.end method

.method public static getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/google/gdata/data/ExtensionDescription;

    invoke-direct {v0}, Lcom/google/gdata/data/ExtensionDescription;-><init>()V

    .line 63
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    const-class v1, Lcom/google/gdata/data/codesearch/Match;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setExtensionClass(Ljava/lang/Class;)V

    .line 64
    sget-object v1, Lcom/google/gdata/data/codesearch/Namespaces;->gCSNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 65
    const-string v1, "match"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setLocalName(Ljava/lang/String;)V

    .line 66
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 67
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
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v0, "attributes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;>;"
    iget-object v1, p0, Lcom/google/gdata/data/codesearch/Match;->lineNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "lineNumber"

    iget-object v3, p0, Lcom/google/gdata/data/codesearch/Match;->lineNumber:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    new-instance v1, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;

    const-string v2, "type"

    const-string v3, "text/html"

    invoke-direct {v1, v2, v3}, Lcom/google/gdata/util/common/xml/XmlWriter$Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_0
    sget-object v1, Lcom/google/gdata/data/codesearch/Namespaces;->gCSNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    const-string v2, "match"

    iget-object v3, p0, Lcom/google/gdata/data/codesearch/Match;->lineText:Lcom/google/gdata/data/HtmlTextConstruct;

    invoke-virtual {v3}, Lcom/google/gdata/data/HtmlTextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lcom/google/gdata/util/common/xml/XmlWriter;->simpleElement(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .param p4, "attrs"    # Lorg/xml/sax/Attributes;

    .prologue
    .line 89
    new-instance v0, Lcom/google/gdata/data/codesearch/Match$Handler;

    invoke-direct {v0, p0, p1}, Lcom/google/gdata/data/codesearch/Match$Handler;-><init>(Lcom/google/gdata/data/codesearch/Match;Lcom/google/gdata/data/ExtensionProfile;)V

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Match;->lineNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getLineText()Lcom/google/gdata/data/HtmlTextConstruct;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/google/gdata/data/codesearch/Match;->lineText:Lcom/google/gdata/data/HtmlTextConstruct;

    return-object v0
.end method
