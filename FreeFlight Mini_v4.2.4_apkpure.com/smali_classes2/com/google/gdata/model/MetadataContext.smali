.class public final Lcom/google/gdata/model/MetadataContext;
.super Ljava/lang/Object;
.source "MetadataContext.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/gdata/model/MetadataContext;",
        ">;"
    }
.end annotation


# static fields
.field public static final ATOM:Lcom/google/gdata/model/MetadataContext;

.field public static final RSS:Lcom/google/gdata/model/MetadataContext;


# instance fields
.field private final altFormat:Lcom/google/gdata/wireformats/AltFormat;

.field private final projection:Ljava/lang/String;

.field private final version:Lcom/google/gdata/util/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->ATOM:Lcom/google/gdata/wireformats/AltFormat;

    invoke-static {v0}, Lcom/google/gdata/model/MetadataContext;->forAlt(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/MetadataContext;->ATOM:Lcom/google/gdata/model/MetadataContext;

    .line 42
    sget-object v0, Lcom/google/gdata/wireformats/AltFormat;->RSS:Lcom/google/gdata/wireformats/AltFormat;

    invoke-static {v0}, Lcom/google/gdata/model/MetadataContext;->forAlt(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    sput-object v0, Lcom/google/gdata/model/MetadataContext;->RSS:Lcom/google/gdata/model/MetadataContext;

    return-void
.end method

.method private constructor <init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/String;Lcom/google/gdata/util/Version;)V
    .locals 0
    .param p1, "format"    # Lcom/google/gdata/wireformats/AltFormat;
    .param p2, "projection"    # Ljava/lang/String;
    .param p3, "version"    # Lcom/google/gdata/util/Version;

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    .line 114
    iput-object p2, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    .line 116
    return-void
.end method

.method static compareAltFormat(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/AltFormat;)I
    .locals 2
    .param p0, "a"    # Lcom/google/gdata/wireformats/AltFormat;
    .param p1, "b"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    const/4 v0, 0x0

    .line 187
    if-nez p0, :cond_0

    move-object v1, v0

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    invoke-static {v1, v0}, Lcom/google/gdata/model/MetadataContext;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/wireformats/AltFormat;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/google/gdata/wireformats/AltFormat;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method static compareString(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 196
    if-ne p0, p1, :cond_0

    .line 197
    const/4 v0, 0x0

    .line 205
    :goto_0
    return v0

    .line 199
    :cond_0
    if-nez p0, :cond_1

    .line 200
    const/4 v0, -0x1

    goto :goto_0

    .line 202
    :cond_1
    if-nez p1, :cond_2

    .line 203
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method static compareVersion(Lcom/google/gdata/util/Version;Lcom/google/gdata/util/Version;)I
    .locals 10
    .param p0, "a"    # Lcom/google/gdata/util/Version;
    .param p1, "b"    # Lcom/google/gdata/util/Version;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 212
    if-ne p0, p1, :cond_1

    move v5, v7

    .line 233
    :cond_0
    :goto_0
    return v5

    .line 215
    :cond_1
    if-eqz p0, :cond_0

    .line 218
    if-nez p1, :cond_2

    move v5, v6

    .line 219
    goto :goto_0

    .line 221
    :cond_2
    invoke-virtual {p0}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getServiceClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/gdata/model/MetadataKey;->compareClass(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v4

    .line 223
    .local v4, "compare":I
    if-eqz v4, :cond_3

    move v5, v4

    .line 224
    goto :goto_0

    .line 226
    :cond_3
    invoke-virtual {p0}, Lcom/google/gdata/util/Version;->getMajor()I

    move-result v0

    .line 227
    .local v0, "aMajor":I
    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getMajor()I

    move-result v2

    .line 228
    .local v2, "bMajor":I
    if-eq v0, v2, :cond_4

    .line 229
    if-lt v0, v2, :cond_0

    move v5, v6

    goto :goto_0

    .line 231
    :cond_4
    invoke-virtual {p0}, Lcom/google/gdata/util/Version;->getMinor()I

    move-result v1

    .line 232
    .local v1, "aMinor":I
    invoke-virtual {p1}, Lcom/google/gdata/util/Version;->getMinor()I

    move-result v3

    .line 233
    .local v3, "bMinor":I
    if-lt v1, v3, :cond_0

    if-ne v1, v3, :cond_5

    move v5, v7

    goto :goto_0

    :cond_5
    move v5, v6

    goto :goto_0
.end method

.method public static forAlt(Lcom/google/gdata/wireformats/AltFormat;)Lcom/google/gdata/model/MetadataContext;
    .locals 1
    .param p0, "format"    # Lcom/google/gdata/wireformats/AltFormat;

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-static {p0, v0, v0}, Lcom/google/gdata/model/MetadataContext;->forContext(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/String;Lcom/google/gdata/util/Version;)Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    return-object v0
.end method

.method public static forContext(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/String;Lcom/google/gdata/util/Version;)Lcom/google/gdata/model/MetadataContext;
    .locals 1
    .param p0, "format"    # Lcom/google/gdata/wireformats/AltFormat;
    .param p1, "projection"    # Ljava/lang/String;
    .param p2, "version"    # Lcom/google/gdata/util/Version;

    .prologue
    .line 93
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 96
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/gdata/model/MetadataContext;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gdata/model/MetadataContext;-><init>(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/String;Lcom/google/gdata/util/Version;)V

    goto :goto_0
.end method

.method public static forProjection(Ljava/lang/String;)Lcom/google/gdata/model/MetadataContext;
    .locals 1
    .param p0, "projection"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-static {v0, p0, v0}, Lcom/google/gdata/model/MetadataContext;->forContext(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/String;Lcom/google/gdata/util/Version;)Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    return-object v0
.end method

.method public static forVersion(Lcom/google/gdata/util/Version;)Lcom/google/gdata/model/MetadataContext;
    .locals 1
    .param p0, "version"    # Lcom/google/gdata/util/Version;

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {v0, v0, p0}, Lcom/google/gdata/model/MetadataContext;->forContext(Lcom/google/gdata/wireformats/AltFormat;Ljava/lang/String;Lcom/google/gdata/util/Version;)Lcom/google/gdata/model/MetadataContext;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/gdata/model/MetadataContext;)I
    .locals 3
    .param p1, "other"    # Lcom/google/gdata/model/MetadataContext;

    .prologue
    .line 166
    if-ne p0, p1, :cond_1

    .line 167
    const/4 v0, 0x0

    .line 179
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-static {v1, v2}, Lcom/google/gdata/model/MetadataContext;->compareAltFormat(Lcom/google/gdata/wireformats/AltFormat;Lcom/google/gdata/wireformats/AltFormat;)I

    move-result v0

    .line 170
    .local v0, "compare":I
    if-nez v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/gdata/model/MetadataContext;->compareString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 174
    if-nez v0, :cond_0

    .line 179
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    iget-object v2, p1, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    invoke-static {v1, v2}, Lcom/google/gdata/model/MetadataContext;->compareVersion(Lcom/google/gdata/util/Version;Lcom/google/gdata/util/Version;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Lcom/google/gdata/model/MetadataContext;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/google/gdata/model/MetadataContext;->compareTo(Lcom/google/gdata/model/MetadataContext;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 262
    if-ne p1, p0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return v1

    .line 265
    :cond_1
    instance-of v3, p1, Lcom/google/gdata/model/MetadataContext;

    if-nez v3, :cond_2

    move v1, v2

    .line 266
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 269
    check-cast v0, Lcom/google/gdata/model/MetadataContext;

    .line 270
    .local v0, "other":Lcom/google/gdata/model/MetadataContext;
    iget-object v3, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    if-nez v3, :cond_3

    .line 271
    iget-object v3, v0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    if-eqz v3, :cond_4

    move v1, v2

    .line 272
    goto :goto_0

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    iget-object v4, v0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v3, v4}, Lcom/google/gdata/wireformats/AltFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    move v1, v2

    .line 275
    goto :goto_0

    .line 277
    :cond_4
    iget-object v3, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 278
    iget-object v3, v0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    if-eqz v3, :cond_6

    move v1, v2

    .line 279
    goto :goto_0

    .line 281
    :cond_5
    iget-object v3, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move v1, v2

    .line 282
    goto :goto_0

    .line 284
    :cond_6
    iget-object v3, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    if-nez v3, :cond_7

    .line 285
    iget-object v3, v0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    if-eqz v3, :cond_0

    move v1, v2

    .line 286
    goto :goto_0

    .line 288
    :cond_7
    iget-object v3, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    iget-object v4, v0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    invoke-virtual {v3, v4}, Lcom/google/gdata/util/Version;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 289
    goto :goto_0
.end method

.method public getAltFormat()Lcom/google/gdata/wireformats/AltFormat;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    return-object v0
.end method

.method public getProjection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/google/gdata/util/Version;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 241
    const/4 v0, 0x0

    .line 242
    .local v0, "hash":I
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v1}, Lcom/google/gdata/wireformats/AltFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_0
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 246
    mul-int/lit8 v0, v0, 0x25

    .line 247
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 249
    :cond_1
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    if-eqz v1, :cond_2

    .line 250
    mul-int/lit8 v0, v0, 0x25

    .line 251
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    invoke-virtual {v1}, Lcom/google/gdata/util/Version;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 253
    :cond_2
    return v0
.end method

.method public matches(Lcom/google/gdata/model/MetadataContext;)Z
    .locals 2
    .param p1, "other"    # Lcom/google/gdata/model/MetadataContext;

    .prologue
    .line 125
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    iget-object v1, p1, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v0, v1}, Lcom/google/gdata/wireformats/AltFormat;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Lcom/google/gdata/util/Version;->isCompatible(Lcom/google/gdata/util/Version;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x2c

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "{MetadataContext("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->altFormat:Lcom/google/gdata/wireformats/AltFormat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->projection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 302
    iget-object v1, p0, Lcom/google/gdata/model/MetadataContext;->version:Lcom/google/gdata/util/Version;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
