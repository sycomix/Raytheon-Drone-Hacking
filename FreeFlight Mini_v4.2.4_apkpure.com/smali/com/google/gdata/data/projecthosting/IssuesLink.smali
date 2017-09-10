.class public Lcom/google/gdata/data/projecthosting/IssuesLink;
.super Lcom/google/gdata/data/Link;
.source "IssuesLink.java"


# annotations
.annotation runtime Lcom/google/gdata/data/ExtensionDescription$Default;
    localName = "link"
    nsAlias = "atom"
    nsUri = "http://www.w3.org/2005/Atom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/projecthosting/IssuesLink$Rel;
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

    .line 65
    invoke-direct {p0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    .line 51
    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Long;Lcom/google/gdata/data/projecthosting/IssuesLink$Rel;Ljava/lang/String;Ljava/lang/String;Lcom/google/gdata/data/DateTime;)V
    .locals 1
    .param p1, "count"    # Ljava/lang/Integer;
    .param p2, "href"    # Ljava/lang/String;
    .param p3, "length"    # Ljava/lang/Long;
    .param p4, "rel"    # Lcom/google/gdata/data/projecthosting/IssuesLink$Rel;
    .param p5, "title"    # Ljava/lang/String;
    .param p6, "type"    # Ljava/lang/String;
    .param p7, "updated"    # Lcom/google/gdata/data/DateTime;

    .prologue
    const/4 v0, 0x0

    .line 76
    invoke-direct {p0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 48
    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    .line 51
    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    .line 77
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesLink;->setCount(Ljava/lang/Integer;)V

    .line 78
    invoke-virtual {p0, p7}, Lcom/google/gdata/data/projecthosting/IssuesLink;->setUpdated(Lcom/google/gdata/data/DateTime;)V

    .line 79
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/projecthosting/IssuesLink;->setImmutable(Z)V

    .line 80
    return-void
.end method

.method public static getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;
    .locals 2
    .param p0, "required"    # Z
    .param p1, "repeatable"    # Z

    .prologue
    .line 157
    const-class v1, Lcom/google/gdata/data/projecthosting/IssuesLink;

    invoke-static {v1}, Lcom/google/gdata/data/ExtensionDescription;->getDefaultDescription(Ljava/lang/Class;)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 159
    .local v0, "desc":Lcom/google/gdata/data/ExtensionDescription;
    invoke-virtual {v0, p0}, Lcom/google/gdata/data/ExtensionDescription;->setRequired(Z)V

    .line 160
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 161
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

    .line 173
    const-string v0, "count"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeInteger(Ljava/lang/String;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    .line 174
    const-string/jumbo v0, "updated"

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeHelper;->consumeDateTime(Ljava/lang/String;Z)Lcom/google/gdata/data/DateTime;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    .line 175
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    if-ne p0, p1, :cond_1

    .line 186
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/projecthosting/IssuesLink;->sameClassAs(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    .line 183
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 185
    check-cast v0, Lcom/google/gdata/data/projecthosting/IssuesLink;

    .line 186
    .local v0, "other":Lcom/google/gdata/data/projecthosting/IssuesLink;
    iget-object v3, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    iget-object v4, v0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    invoke-static {v3, v4}, Lcom/google/gdata/data/projecthosting/IssuesLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    iget-object v4, v0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    invoke-static {v3, v4}, Lcom/google/gdata/data/projecthosting/IssuesLink;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getCount()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUpdated()Lcom/google/gdata/data/DateTime;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    return-object v0
.end method

.method public hasCount()Z
    .locals 1

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/IssuesLink;->getCount()Ljava/lang/Integer;

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
    .line 135
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/IssuesLink;->getUpdated()Lcom/google/gdata/data/DateTime;

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
    .line 192
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 193
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 194
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    if-eqz v1, :cond_1

    .line 197
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {v2}, Lcom/google/gdata/data/DateTime;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 199
    :cond_1
    return v0
.end method

.method protected putAttributes(Lcom/google/gdata/data/AttributeGenerator;)V
    .locals 2
    .param p1, "generator"    # Lcom/google/gdata/data/AttributeGenerator;

    .prologue
    .line 166
    const-string/jumbo v0, "thr:count"

    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 167
    const-string/jumbo v0, "thr:updated"

    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/AttributeGenerator;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    return-void
.end method

.method public setCount(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/IssuesLink;->throwExceptionIfImmutable()V

    .line 98
    iput-object p1, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    .line 99
    return-void
.end method

.method public setUpdated(Lcom/google/gdata/data/DateTime;)V
    .locals 0
    .param p1, "updated"    # Lcom/google/gdata/data/DateTime;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/google/gdata/data/projecthosting/IssuesLink;->throwExceptionIfImmutable()V

    .line 126
    iput-object p1, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

    .line 127
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{IssuesLink count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->updated:Lcom/google/gdata/data/DateTime;

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
    .line 140
    iget-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thr:count attribute must be non-negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/gdata/data/projecthosting/IssuesLink;->count:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_0
    return-void
.end method
