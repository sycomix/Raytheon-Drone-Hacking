.class public abstract Lcom/crittercism/app/Transaction;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/crittercism/internal/ax;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/crittercism/app/Transaction;
    .locals 3

    .prologue
    .line 36
    .line 1046
    if-eqz p0, :cond_0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1047
    :cond_0
    const-string v0, "Transaction was created with a null/zero-length name. Returning no-op transaction"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction created with null/zero-length name"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1050
    new-instance v0, Lcom/crittercism/internal/bc;

    invoke-direct {v0}, Lcom/crittercism/internal/bc;-><init>()V

    .line 1059
    :goto_0
    return-object v0

    .line 1053
    :cond_1
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    .line 1183
    iget-boolean v0, v1, Lcom/crittercism/internal/ax;->b:Z

    .line 1054
    if-eqz v0, :cond_3

    .line 2025
    iget-object v0, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 1056
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1057
    new-instance v0, Lcom/crittercism/internal/bc;

    invoke-direct {v0}, Lcom/crittercism/internal/bc;-><init>()V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    throw v0

    .line 1059
    :cond_2
    :try_start_1
    new-instance v0, Lcom/crittercism/internal/be;

    invoke-direct {v0, v1, p0}, Lcom/crittercism/internal/be;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 40
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 41
    new-instance v0, Lcom/crittercism/internal/bc;

    invoke-direct {v0}, Lcom/crittercism/internal/bc;-><init>()V

    goto :goto_0

    .line 1062
    :cond_3
    :try_start_2
    const-string v0, "Transaction was created before Crittercism.initialize() was called. Returning no-op transaction"

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Transaction created before Crittercism.initialize()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1066
    new-instance v0, Lcom/crittercism/internal/bc;

    invoke-direct {v0}, Lcom/crittercism/internal/bc;-><init>()V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(I)V
.end method

.method public abstract a_()I
.end method

.method public abstract b()V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method
