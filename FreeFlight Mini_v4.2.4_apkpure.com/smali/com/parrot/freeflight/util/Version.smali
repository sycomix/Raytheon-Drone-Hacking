.class public Lcom/parrot/freeflight/util/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/parrot/freeflight/util/Version;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStringVersion:Ljava/lang/String;

.field private final mSubVersions:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-string v3, "\\."

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 19
    .local v2, "subVersionStrings":[Ljava/lang/String;
    array-length v3, v2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/parrot/freeflight/util/Version;->mSubVersions:[I

    .line 21
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 23
    :try_start_0
    iget-object v3, p0, Lcom/parrot/freeflight/util/Version;->mSubVersions:[I

    aget-object v4, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/parrot/freeflight/util/Version;->mSubVersions:[I

    const/4 v4, 0x0

    aput v4, v3, v1

    goto :goto_1

    .line 29
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    iput-object p1, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 4
    .param p1, "versions"    # [I

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/parrot/freeflight/util/Version;->mSubVersions:[I

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 36
    if-lez v1, :cond_0

    .line 37
    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    aget v3, p1, v1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/parrot/freeflight/util/Version;)I
    .locals 2
    .param p1, "another"    # Lcom/parrot/freeflight/util/Version;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 54
    iget-object v0, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 7
    check-cast p1, Lcom/parrot/freeflight/util/Version;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v0

    return v0
.end method

.method public getStringVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 59
    iget-object v0, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    return-object v0
.end method
