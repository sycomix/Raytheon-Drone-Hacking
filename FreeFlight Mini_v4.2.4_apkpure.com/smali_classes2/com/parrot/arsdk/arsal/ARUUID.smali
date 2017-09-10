.class public Lcom/parrot/arsdk/arsal/ARUUID;
.super Ljava/lang/Object;
.source "ARUUID.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getShortUuid(Ljava/util/UUID;)Ljava/lang/String;
    .locals 3
    .param p0, "uuid"    # Ljava/util/UUID;

    .prologue
    const/4 v2, 0x4

    .line 39
    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, "shortUuid":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_0

    .line 43
    const/16 v1, 0x8

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 45
    :cond_0
    return-object v0
.end method
