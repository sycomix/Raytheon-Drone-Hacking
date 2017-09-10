.class public Lcom/google/gdata/data/analytics/CustomVariable;
.super Lcom/google/gdata/data/ExtensionPoint;
.source "CustomVariable.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "customVariable"
    nsAlias = "ga"
    nsUri = "http://schemas.google.com/ga/2009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/analytics/CustomVariable$Scope;
    }
.end annotation


# static fields
.field private static final INDEX:Ljava/lang/String; = "index"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final SCOPE:Ljava/lang/String; = "scope"

.field static final XML_NAME:Ljava/lang/String; = "customVariable"


# instance fields
.field private index:Ljava/lang/Integer;

.field private name:Ljava/lang/String;

.field private scope:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 75
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "index"    # Ljava/lang/Integer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "scope"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/google/gdata/data/ExtensionPoint;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    .line 52
    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/CustomVariable;->setIndex(Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {p0, p2}, Lcom/google/gdata/data/analytics/CustomVariable;->setName(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0, p3}, Lcom/google/gdata/data/analytics/CustomVariable;->setScope(Ljava/lang/String;)V

    .line 90
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/analytics/CustomVariable;->setImmutable(Z)V

    .line 91
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 200
    const-class v1, Lcom/google/gdata/data/analytics/CustomVariable;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 202
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 203
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 204
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
    const/4 v1, 0x1

    .line 217
    const-string v0, "index"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    .line 218
    const-string v0, "name"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    .line 219
    const-string v0, "scope"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consume(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    .line 220
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 224
    if-ne p0, p1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/analytics/CustomVariable;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 228
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 230
    check-cast v0, Lcom/google/gdata/data/analytics/CustomVariable;

    .line 231
    .local v0, "other":Lcom/google/gdata/data/analytics/CustomVariable;
    iget-object v3, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/CustomVariable;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/CustomVariable;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/gdata/data/analytics/CustomVariable;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScope()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    return-object v0
.end method

.method public hasIndex()Z
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/CustomVariable;->getIndex()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/CustomVariable;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasScope()Z
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/CustomVariable;->getScope()Ljava/lang/String;

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
    .line 238
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 239
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 240
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 243
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 246
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 248
    :cond_2
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 209
    const-string v0, "index"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 210
    const-string v0, "name"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "scope"

    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public setIndex(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "index"    # Ljava/lang/Integer;

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/CustomVariable;->throwExceptionIfImmutable()V

    .line 109
    iput-object p1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    .line 110
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/CustomVariable;->throwExceptionIfImmutable()V

    .line 137
    iput-object p1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setScope(Ljava/lang/String;)V
    .locals 0
    .param p1, "scope"    # Ljava/lang/String;

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/google/gdata/data/analytics/CustomVariable;->throwExceptionIfImmutable()V

    .line 165
    iput-object p1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{CustomVariable index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " scope="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

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
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->index:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "index"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/CustomVariable;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->name:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 183
    const-string v0, "name"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/CustomVariable;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/google/gdata/data/analytics/CustomVariable;->scope:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 186
    const-string v0, "scope"

    invoke-static {v0}, Lcom/google/gdata/data/analytics/CustomVariable;->throwExceptionForMissingAttribute(Ljava/lang/String;)V

    .line 188
    :cond_2
    return-void
.end method
