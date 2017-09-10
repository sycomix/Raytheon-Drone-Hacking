.class public Lcom/google/gdata/data/sites/SitesLink;
.super Lcom/google/gdata/data/Link;
.source "SitesLink.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "link"
    nsAlias = "atom"
    nsUri = "http://www.w3.org/2005/Atom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/sites/SitesLink$Type;,
        Lcom/google/gdata/data/sites/SitesLink$Rel;
    }
.end annotation


# static fields
.field private static final COUNT:Ljava/lang/String; = "thr:count"

.field private static final UPDATED:Ljava/lang/String; = "thr:updated"

.field static final XML_NAME:Ljava/lang/String; = "link"


# instance fields
.field private count:Ljava/lang/Integer;

.field private updated:Lcom/google/gdata/data/DateTime;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/data/DateTime;)V
    .locals 1
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "href"    # Ljava/lang/String;
    .param p3, "hrefLang"    # Ljava/lang/String;
    .param p4, "length"    # Ljava/lang/Long;
    .param p5, "rel"    # Ljava/lang/String;
    .param p6, "title"    # Ljava/lang/String;
    .param p7, "titleLang"    # Ljava/lang/String;
    .param p8, "type"    # Ljava/lang/String;
    .param p9, "updated"    # Lcom/google/gdata/data/DateTime;

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 49
    iput-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    .line 53
    iput-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    .line 119
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/SitesLink;->setCount(Ljava/lang/Integer;)V

    .line 120
    invoke-virtual {p0, p9}, Lcom/google/gdata/data/sites/SitesLink;->setUpdated(Lcom/google/gdata/data/DateTime;)V

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/sites/SitesLink;->setImmutable(Z)V

    .line 122
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 213
    const-class v1, Lcom/google/gdata/data/sites/SitesLink;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 215
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 216
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 217
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

    .line 229
    const-string v0, "count"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    .line 230
    const-string/jumbo v0, "updated"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    .line 231
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    if-ne p0, p1, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 238
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/sites/SitesLink;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 239
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 241
    check-cast v0, Lcom/google/gdata/data/sites/SitesLink;

    .line 242
    .local v0, "other":Lcom/google/gdata/data/sites/SitesLink;
    iget-object v3, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/gdata/data/sites/SitesLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    iget-object v4, v0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    invoke-static {v3, v4}, Lcom/google/gdata/data/sites/SitesLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUpdated()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/gdata/data/sites/SitesLink;->getCount()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdated()Z
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/gdata/data/sites/SitesLink;->getUpdated()Lcom/google/gdata/data/DateTime;

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
    .line 248
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 249
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 250
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 252
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    if-eqz v1, :cond_1

    .line 253
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 255
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 222
    const-string/jumbo v0, "thr:count"

    iget-object v1, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    const-string/jumbo v0, "thr:updated"

    iget-object v1, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    return-void
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/google/gdata/data/sites/SitesLink;->throwExceptionIfImmutable()V

    .line 144
    iput-object p1, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    .line 145
    return-void
.end method

.method public setUpdated(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "updated"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/google/gdata/data/sites/SitesLink;->throwExceptionIfImmutable()V

    .line 179
    iput-object p1, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{SitesLink count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/sites/SitesLink;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

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
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 197
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thr:count attribute must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/data/sites/SitesLink;->count:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_0
    return-void
.end method
