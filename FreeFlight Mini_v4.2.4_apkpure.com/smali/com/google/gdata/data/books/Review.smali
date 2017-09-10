.class public Lcom/google/gdata/data/books/Review;
.super Lcom/google/gdata/data/AbstractExtension;
.source "Review.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "review"
    nsAlias = "gbs"
    nsUri = "http://schemas.google.com/books/2008"
.end annotation


# static fields
.field private static final LANG:Ljava/lang/String; = "xml:lang"

.field private static final TYPE:Ljava/lang/String; = "type"

.field static final XML_NAME:Ljava/lang/String; = "review"


# instance fields
.field private lang:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 69
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    .line 70
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/books/Review;->setLang(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/books/Review;->setType(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/books/Review;->setValue(Ljava/lang/String;)V

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/books/Review;->setImmutable(Z)V

    .line 74
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 180
    const-class v1, Lcom/google/gdata/data/books/Review;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 182
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 183
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 184
    return-object v0
.end method


# virtual methods
.method protected consumeAttributes(Lcom/google/gdata/data/AttributeHelper;)V
    .locals 2
    .param p1, "helper"    # Lcom/google/gdata/data/AttributeHelper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ParseException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    const-string v0, "lang"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    .line 198
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    .line 199
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    if-ne p0, p1, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/books/Review;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 208
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 210
    check-cast v0, Lcom/google/gdata/data/books/Review;

    .line 211
    .local v0, "other":Lcom/google/gdata/data/books/Review;
    iget-object v3, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/books/Review;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/books/Review;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/books/Review;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getLang()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hasLang()Z
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/google/gdata/data/books/Review;->getLang()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/google/gdata/data/books/Review;->getType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 160
    invoke-virtual {p0}, Lcom/google/gdata/data/books/Review;->getValue()Ljava/lang/String;

    move-result-object v0

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
    .line 218
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 219
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 220
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 223
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 226
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 228
    :cond_2
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 189
    const-string/jumbo v0, "xml:lang"

    iget-object v1, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v0, "type"

    iget-object v1, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 192
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/google/gdata/data/books/Review;->throwExceptionIfImmutable()V

    .line 92
    iput-object p1, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/google/gdata/data/books/Review;->throwExceptionIfImmutable()V

    .line 121
    iput-object p1, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/gdata/data/books/Review;->throwExceptionIfImmutable()V

    .line 151
    iput-object p1, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Review lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/books/Review;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/books/Review;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/gdata/data/books/Review;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing text content"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_0
    return-void
.end method
