.class public final Lcom/crittercism/internal/i;
.super Ljava/lang/Object;


# direct methods
.method public static a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    if-eqz p0, :cond_0

    const-string v0, "installed "

    .line 55
    :goto_0
    const-string v1, "%s%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const/4 v0, 0x2

    const-string v3, " service monitoring"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 54
    :cond_0
    const-string v0, "did not install "

    goto :goto_0
.end method
