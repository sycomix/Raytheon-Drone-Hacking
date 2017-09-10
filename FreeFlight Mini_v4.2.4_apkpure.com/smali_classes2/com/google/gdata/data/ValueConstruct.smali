.class public abstract Lcom/google/gdata/data/ValueConstruct;
.super Lcom/google/gdata/data/AbstractExtension;
.source "ValueConstruct.java"


# instance fields
.field protected final attrName:Ljava/lang/String;

.field private required:Z

.field private value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;

    .prologue
    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/gdata/data/ValueConstruct;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method protected constructor <init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "namespace"    # Lcom/google/gdata/util/common/xml/XmlNamespace;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/google/gdata/data/AbstractExtension;-><init>(Lcom/google/gdata/util/common/xml/XmlNamespace;Ljava/lang/String;)V

    .line 75
    iput-boolean v0, p0, Lcom/google/gdata/data/ValueConstruct;->required:Z

    .line 133
    iput-object p3, p0, Lcom/google/gdata/data/ValueConstruct;->attrName:Ljava/lang/String;

    .line 134
    if-eqz p4, :cond_0

    .line 135
    invoke-virtual {p0, p4}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setImmutable(Z)V

    .line 138
    :cond_0
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "attrName"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gdata/data/ValueConstruct;->required:Z

    .line 93
    iput-object p1, p0, Lcom/google/gdata/data/ValueConstruct;->attrName:Ljava/lang/String;

    .line 94
    return-void
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 4
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    .line 181
    iget-object v2, p0, Lcom/google/gdata/data/ValueConstruct;->attrName:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 182
    iget-object v2, p0, Lcom/google/gdata/data/ValueConstruct;->attrName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/gdata/data/ValueConstruct;->isRequired()Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "actualValue":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/ValueConstruct;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    return-void

    .line 184
    .end local v0    # "actualValue":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/ValueConstruct;->isRequired()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/google/gdata/data/AttributeHelper;->consumeContent(Z)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "actualValue":Ljava/lang/String;
    goto :goto_0

    .line 188
    :catch_0
    move-exception v1

    .line 189
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v2, Lcom/google/gdata/util/ParseException;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/google/gdata/util/ParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 213
    if-ne p0, p1, :cond_0

    .line 214
    const/4 v1, 0x1

    .line 220
    :goto_0
    return v1

    .line 216
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/ValueConstruct;->sameClassAs(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 217
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 219
    check-cast v0, Lcom/google/gdata/data/ValueConstruct;

    .line 220
    .local v0, "vc":Lcom/google/gdata/data/ValueConstruct;
    iget-object v1, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    iget-object v2, v0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/gdata/data/ValueConstruct;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "w"    # Lcom/google/gdata/util/common/xml/XmlWriter;
    .param p2, "p"    # Lcom/google/gdata/data/ExtensionProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    iget-object v0, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 198
    invoke-super {p0, p1, p2}, Lcom/google/gdata/data/AbstractExtension;->generate(Lcom/google/gdata/util/common/xml/XmlWriter;Lcom/google/gdata/data/ExtensionProfile;)V

    .line 200
    :cond_0
    return-void
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
    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    .line 208
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/gdata/data/AbstractExtension;->getHandler(Lcom/google/gdata/data/ExtensionProfile;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)Lcom/google/gdata/util/XmlParser$ElementHandler;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 225
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 226
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 227
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 229
    :cond_0
    return v0
.end method

.method public final isRequired()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/gdata/data/ValueConstruct;->required:Z

    return v0
.end method

.method public putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/gdata/data/ValueConstruct;->attrName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/google/gdata/data/ValueConstruct;->attrName:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final setRequired(Z)V
    .locals 0
    .param p1, "isRequired"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/google/gdata/data/ValueConstruct;->required:Z

    .line 79
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/gdata/data/ValueConstruct;->throwExceptionIfImmutable()V

    .line 156
    iput-object p1, p0, Lcom/google/gdata/data/ValueConstruct;->value:Ljava/lang/String;

    return-void
.end method
