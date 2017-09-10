.class public Lcom/google/gdata/data/photos/GphotoStarred;
.super Lcom/google/gdata/data/AbstractExtension;
.source "GphotoStarred.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "starred"
    nsAlias = "gphoto"
    nsUri = "http://schemas.google.com/photos/2007"
.end annotation


# static fields
.field private static final TOTAL:Ljava/lang/String; = "total"

.field static final XML_NAME:Ljava/lang/String; = "starred"


# instance fields
.field private total:Ljava/lang/Integer;

.field private value:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "total"    # Ljava/lang/Integer;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/google/gdata/data/AbstractExtension;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    .line 46
    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    .line 63
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoStarred;->setTotal(Ljava/lang/Integer;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/photos/GphotoStarred;->setValue(Ljava/lang/Boolean;)V

    .line 65
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/GphotoStarred;->setImmutable(Z)V

    .line 66
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 138
    const-class v1, Lcom/google/gdata/data/photos/GphotoStarred;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 140
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 141
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 142
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

    .line 154
    const-string/jumbo v0, "total"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    .line 156
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    if-ne p0, p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/GphotoStarred;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 164
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 166
    check-cast v0, Lcom/google/gdata/data/photos/GphotoStarred;

    .line 167
    .local v0, "other":Lcom/google/gdata/data/photos/GphotoStarred;
    iget-object v3, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/gdata/data/photos/GphotoStarred;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    iget-object v4, v0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lcom/google/gdata/data/photos/GphotoStarred;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getTotal()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hasTotal()Z
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoStarred;->getTotal()Ljava/lang/Integer;

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
    .line 121
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoStarred;->getValue()Ljava/lang/Boolean;

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
    .line 173
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 174
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 175
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    .line 178
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 180
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 147
    const-string/jumbo v0, "total"

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    iget-object v0, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/AttributeGenerator;->setContent(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public setTotal(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "total"    # Ljava/lang/Integer;

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoStarred;->throwExceptionIfImmutable()V

    .line 84
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    .line 85
    return-void
.end method

.method public setValue(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/GphotoStarred;->throwExceptionIfImmutable()V

    .line 112
    iput-object p1, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{GphotoStarred total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoStarred;->total:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/photos/GphotoStarred;->value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 126
    return-void
.end method
