.class public Lcom/crittercism/app/Crittercism;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/crittercism/app/Crittercism$LoggingLevel;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/crittercism/internal/bl$a;)V
    .locals 2

    .prologue
    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Crittercism cannot be initialized. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/crittercism/internal/bl$a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 178
    const-string v0, "Crittercism cannot be initialized"

    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    return-void
.end method

.method private static a(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 964
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 25025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 966
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 967
    const-string v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 975
    :goto_0
    return-void

    .line 25183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 969
    if-nez v1, :cond_1

    .line 970
    const-string v0, "setTransactionValue"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 974
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 828
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 21025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 830
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 831
    const-string v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 838
    :goto_0
    return-void

    .line 21183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 833
    if-nez v1, :cond_1

    .line 834
    const-string v0, "beginTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 837
    :cond_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static beginTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 819
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 825
    :goto_0
    return-void

    .line 821
    :catch_0
    move-exception v0

    throw v0

    .line 823
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static beginUserflow(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 808
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 814
    :goto_0
    return-void

    .line 810
    :catch_0
    move-exception v0

    throw v0

    .line 812
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 862
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 22025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 864
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 865
    const-string v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 872
    :goto_0
    return-void

    .line 22183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 867
    if-nez v1, :cond_1

    .line 868
    const-string v0, "endTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 871
    :cond_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static cancelTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 921
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 927
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    throw v0

    .line 925
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static cancelUserflow(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 910
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 916
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    throw v0

    .line 914
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 896
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 23025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 898
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 899
    const-string v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 906
    :goto_0
    return-void

    .line 23183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 901
    if-nez v1, :cond_1

    .line 902
    const-string v0, "failTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 905
    :cond_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static didCrashOnLastLoad()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 12475
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    .line 13025
    iget-object v2, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 12477
    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12478
    const-string v1, "didCrashOnLastLoad"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    .line 14037
    :cond_0
    :goto_0
    return v0

    .line 13183
    :cond_1
    iget-boolean v2, v1, Lcom/crittercism/internal/ax;->b:Z

    .line 12480
    if-nez v2, :cond_2

    .line 12483
    const-string v1, "didCrashOnLoad"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 467
    :catch_0
    move-exception v0

    throw v0

    .line 14036
    :cond_2
    :try_start_1
    iget-object v2, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14040
    iget-object v1, v1, Lcom/crittercism/internal/ax;->f:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 14041
    sget-boolean v0, Lcom/crittercism/internal/dp;->a:Z
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 469
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 930
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 24025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 932
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 933
    const-string v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 940
    :goto_0
    return-void

    .line 24183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 935
    if-nez v1, :cond_1

    .line 936
    const-string v0, "cancelTransaction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 939
    :cond_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->f(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static endTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 853
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 859
    :goto_0
    return-void

    .line 855
    :catch_0
    move-exception v0

    throw v0

    .line 857
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static endUserflow(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 842
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 848
    :goto_0
    return-void

    .line 844
    :catch_0
    move-exception v0

    throw v0

    .line 846
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)I
    .locals 3

    .prologue
    const/4 v0, -0x1

    .line 1001
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v1

    .line 26025
    iget-object v2, v1, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 1003
    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1004
    const-string v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 1011
    :goto_0
    return v0

    .line 26183
    :cond_0
    iget-boolean v2, v1, Lcom/crittercism/internal/ax;->b:Z

    .line 1006
    if-nez v2, :cond_1

    .line 1007
    const-string v1, "getTransactionValue"

    invoke-static {v1}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V

    goto :goto_0

    .line 1011
    :cond_1
    invoke-virtual {v1, p0}, Lcom/crittercism/internal/ax;->g(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static failTransaction(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 887
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 893
    :goto_0
    return-void

    .line 889
    :catch_0
    move-exception v0

    throw v0

    .line 891
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static failUserflow(Ljava/lang/String;)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 876
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 882
    :goto_0
    return-void

    .line 878
    :catch_0
    move-exception v0

    throw v0

    .line 880
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1113
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Must initialize Crittercism before calling "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/app/Crittercism;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(). Request is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1116
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1117
    return-void
.end method

.method public static generateRateMyAppAlertDialog(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 4
    .param p0, "activityContext"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 136
    .line 4147
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v3

    .line 4393
    iget-object v1, v3, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    if-eqz v1, :cond_0

    .line 4394
    iget-object v1, v3, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->b()Ljava/lang/String;

    move-result-object v2

    .line 4395
    iget-object v1, v3, Lcom/crittercism/internal/ax;->A:Lcom/crittercism/internal/ds;

    invoke-virtual {v1}, Lcom/crittercism/internal/ds;->c()Ljava/lang/String;

    move-result-object v1

    .line 4398
    :goto_0
    invoke-virtual {v3, p0, v1, v2}, Lcom/crittercism/internal/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 143
    :goto_1
    return-object v0

    .line 138
    :catch_0
    move-exception v0

    throw v0

    .line 140
    :catch_1
    move-exception v1

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method public static generateRateMyAppAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "activityContext"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 93
    .line 4108
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/crittercism/internal/ax;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    .line 95
    :catch_0
    move-exception v0

    throw v0

    .line 97
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 100
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getOptOutStatus()Z
    .locals 1

    .prologue
    .line 15667
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 16025
    iget-object v0, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 15669
    invoke-virtual {v0}, Lcom/crittercism/internal/dr;->a()Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 662
    :goto_0
    return v0

    .line 659
    :catch_0
    move-exception v0

    throw v0

    .line 661
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 662
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getTransactionValue(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 991
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 996
    :goto_0
    return v0

    .line 993
    :catch_0
    move-exception v0

    throw v0

    .line 995
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 996
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getUserflowValue(Ljava/lang/String;)I
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 979
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/app/Crittercism;->f(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 984
    :goto_0
    return v0

    .line 981
    :catch_0
    move-exception v0

    throw v0

    .line 983
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    .line 984
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "User has opted out of Crittercism. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/crittercism/app/Crittercism;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "() call is being ignored..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1123
    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 1124
    return-void
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-direct {v0}, Lcom/crittercism/app/CrittercismConfig;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/crittercism/app/Crittercism;->initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    monitor-exit v1

    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/String;Lcom/crittercism/app/CrittercismConfig;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appID"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/crittercism/app/CrittercismConfig;

    .prologue
    .line 163
    const-class v1, Lcom/crittercism/app/Crittercism;

    monitor-enter v1

    .line 5182
    if-nez p1, :cond_1

    .line 5183
    :try_start_0
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/crittercism/internal/bl$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5190
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 5185
    :cond_1
    if-nez p0, :cond_2

    .line 5186
    :try_start_1
    const-class v0, Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/crittercism/internal/bl$a; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    :try_start_2
    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/internal/bl$a;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 163
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 5188
    :cond_2
    if-nez p2, :cond_3

    .line 5189
    :try_start_3
    const-class v0, Lcom/crittercism/app/CrittercismConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/crittercism/internal/bl$a; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 167
    :catch_1
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5193
    :cond_3
    :try_start_5
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 6183
    iget-boolean v0, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 5193
    if-nez v0, :cond_0

    .line 5194
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 5195
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 6195
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xe

    if-ge v4, v5, :cond_4

    .line 6196
    const-string v0, "Crittercism is not supported for Android API less than 14 (ICS)."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 5196
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 5197
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Crittercism finished initializing in "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V
    :try_end_5
    .catch Lcom/crittercism/internal/bl$a; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 169
    :catch_2
    move-exception v0

    :try_start_6
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 6201
    :cond_4
    :try_start_7
    iput-object p1, v0, Lcom/crittercism/internal/ax;->e:Ljava/lang/String;

    .line 6202
    iput-object p0, v0, Lcom/crittercism/internal/ax;->c:Landroid/content/Context;

    .line 6203
    new-instance v4, Lcom/crittercism/internal/at;

    invoke-direct {v4, p0}, Lcom/crittercism/internal/at;-><init>(Landroid/content/Context;)V

    iput-object v4, v0, Lcom/crittercism/internal/ax;->d:Lcom/crittercism/internal/at;

    .line 6204
    iput-object p2, v0, Lcom/crittercism/internal/ax;->t:Lcom/crittercism/app/CrittercismConfig;

    .line 6206
    iget-object v4, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    invoke-virtual {v4}, Lcom/crittercism/internal/dr;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 6218
    const-string v0, "User opted out. Not initializing Crittercism"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 6209
    :cond_5
    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->D()V
    :try_end_7
    .catch Lcom/crittercism/internal/bl$a; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method

.method public static instrumentWebView(Landroid/webkit/WebView;)V
    .locals 2
    .param p0, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 620
    .line 14629
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 15025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 14631
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14632
    const-string v0, "instrumentWebView"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 14640
    :goto_0
    return-void

    .line 15183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 14634
    if-nez v1, :cond_1

    .line 14635
    const-string v0, "instrumentWebView"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 622
    :catch_0
    move-exception v0

    throw v0

    .line 14638
    :cond_1
    if-nez p0, :cond_2

    .line 14639
    :try_start_1
    const-string v0, "WebView was null. Skipping instrumentation."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 624
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 14642
    :cond_2
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->a(Landroid/webkit/WebView;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static leaveBreadcrumb(Ljava/lang/String;)V
    .locals 2
    .param p0, "breadcrumb"    # Ljava/lang/String;

    .prologue
    .line 777
    .line 19786
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 20025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 19788
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 19789
    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 19797
    :goto_0
    return-void

    .line 20183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 19791
    if-nez v1, :cond_1

    .line 19792
    const-string v0, "leaveBreadcrumb"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 779
    :catch_0
    move-exception v0

    throw v0

    .line 19795
    :cond_1
    if-nez p0, :cond_2

    .line 19796
    :try_start_1
    const-string v0, "Cannot leave null breadcrumb"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 781
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 19799
    :cond_2
    :try_start_2
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static logHandledException(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 246
    .line 9295
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 10025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 9297
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9298
    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 9302
    :goto_0
    return-void

    .line 10183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 9300
    if-nez v1, :cond_1

    .line 9301
    const-string v0, "logHandledException"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 248
    :catch_0
    move-exception v0

    throw v0

    .line 9304
    :cond_1
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->b(Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 250
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static logNetworkRequest(Ljava/lang/String;Ljava/net/URL;JJJILjava/lang/Exception;)V
    .locals 16
    .param p0, "method"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "responseTime"    # J
    .param p4, "bytesRead"    # J
    .param p6, "bytesSent"    # J
    .param p8, "responseCode"    # I
    .param p9, "error"    # Ljava/lang/Exception;

    .prologue
    .line 339
    .line 10352
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v14, v2, p2

    .line 10353
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v3

    .line 11025
    iget-object v2, v3, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 10355
    invoke-virtual {v2}, Lcom/crittercism/internal/dr;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10356
    const-string v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 11518
    :goto_0
    return-void

    .line 11183
    :cond_0
    iget-boolean v2, v3, Lcom/crittercism/internal/ax;->b:Z

    .line 10358
    if-nez v2, :cond_1

    .line 10359
    const-string v2, "logNetworkRequest"

    invoke-static {v2}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v2

    throw v2

    .line 11516
    :cond_1
    if-nez p1, :cond_2

    .line 11517
    :try_start_1
    const-string v2, "Null URL provided. Endpoint will not be logged"

    invoke-static {v2}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 344
    :catch_1
    move-exception v2

    invoke-static {v2}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 11521
    :cond_2
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v5

    .line 11522
    new-instance v13, Lcom/crittercism/internal/ax$1;

    move-object/from16 v0, p9

    invoke-direct {v13, v3, v0}, Lcom/crittercism/internal/ax$1;-><init>(Lcom/crittercism/internal/ax;Ljava/lang/Exception;)V

    move-object/from16 v4, p0

    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move/from16 v12, p8

    .line 11535
    invoke-virtual/range {v3 .. v15}, Lcom/crittercism/internal/ax;->a(Ljava/lang/String;Ljava/lang/String;JJJILcom/crittercism/internal/ax$b;J)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static performRateMyAppButtonAction(Lcom/crittercism/app/CritterRateMyAppButtons;)V
    .locals 4
    .param p0, "button"    # Lcom/crittercism/app/CritterRateMyAppButtons;

    .prologue
    .line 44
    .line 2053
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 3025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 2055
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2056
    const-string v0, "performRateMyAppButtonAction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 3375
    :goto_0
    return-void

    .line 3183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 2058
    if-nez v1, :cond_1

    .line 2059
    const-string v0, "preformRateMyAppButtonAction"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    throw v0

    .line 3349
    :cond_1
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 3350
    const-string v0, "Rate my app not supported below api level 5"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3354
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->F()Ljava/lang/String;

    move-result-object v1

    .line 3355
    if-nez v1, :cond_3

    .line 3356
    const-string v0, "Cannot create proper URI to open app market.  Returning null."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 3360
    :cond_3
    sget-object v2, Lcom/crittercism/internal/ax$5;->a:[I

    invoke-virtual {p0}, Lcom/crittercism/app/CritterRateMyAppButtons;->ordinal()I

    move-result v3

    aget v2, v2, v3
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 3363
    :pswitch_0
    :try_start_3
    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->b(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 3364
    :catch_2
    move-exception v0

    .line 3365
    :try_start_4
    const-string v1, "performRateMyAppButtonAction(CritterRateMyAppButtons.YES) failed.  Email support@crittercism.com."

    invoke-static {v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 3366
    invoke-static {v0}, Lcom/crittercism/internal/dw;->a(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 3371
    :pswitch_1
    :try_start_5
    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->E()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/ThreadDeath; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 3373
    :catch_3
    move-exception v0

    :try_start_6
    const-string v0, "performRateMyAppButtonAction(CritterRateMyAppButtons.NO) failed.  Email support@crittercism.com."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/ThreadDeath; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 3360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sendAppLoadData()V
    .locals 6

    .prologue
    .line 7218
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 8025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 7220
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7221
    const-string v0, "sendAppLoadData"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 9108
    :cond_0
    :goto_0
    return-void

    .line 8183
    :cond_1
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 7223
    if-nez v1, :cond_2

    .line 7224
    const-string v0, "sendAppLoadData"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    throw v0

    .line 8727
    :cond_2
    :try_start_1
    iget-object v1, v0, Lcom/crittercism/internal/ax;->u:Lcom/crittercism/internal/az;

    .line 7230
    invoke-virtual {v1}, Lcom/crittercism/app/CrittercismConfig;->delaySendingAppLoad()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8731
    iget-object v0, v0, Lcom/crittercism/internal/ax;->C:Lcom/crittercism/internal/ap;

    .line 9105
    iget-object v1, v0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    invoke-virtual {v1}, Lcom/crittercism/internal/az;->delaySendingAppLoad()Z

    move-result v1

    if-nez v1, :cond_3

    .line 9106
    const-string v0, "CrittercismConfig instance not set to delay sending new app loads (or sendAppLoadData already called)."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 9110
    :cond_3
    :try_start_2
    iget-object v1, v0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/crittercism/internal/az;->setDelaySendingAppLoad(Z)V

    .line 9111
    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9112
    iget-object v1, v0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    iget-object v2, v0, Lcom/crittercism/internal/ap;->e:Landroid/content/Context;

    iget-object v3, v0, Lcom/crittercism/internal/ap;->c:Lcom/crittercism/internal/az;

    iget-object v4, v0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    iget-object v5, v0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    invoke-virtual/range {v0 .. v5}, Lcom/crittercism/internal/ap;->a(Lcom/crittercism/internal/au;Landroid/content/Context;Lcom/crittercism/internal/az;Lcom/crittercism/internal/ar;Lcom/crittercism/internal/ax;)Ljava/lang/Runnable;

    move-result-object v1

    .line 9113
    iget-object v0, v0, Lcom/crittercism/internal/ap;->f:Lcom/crittercism/internal/ax;

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 7233
    :cond_4
    const-string v0, "sendAppLoadData() will only send data to Crittercism if \"delaySendingAppLoad\" is set to true in the configuration settings you include in the init call."

    .line 7236
    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public static setLoggingLevel(Lcom/crittercism/app/Crittercism$LoggingLevel;)V
    .locals 1
    .param p0, "loggingLevel"    # Lcom/crittercism/app/Crittercism$LoggingLevel;

    .prologue
    .line 1079
    .line 29088
    :try_start_0
    invoke-static {p0}, Lcom/crittercism/internal/dw;->a(Lcom/crittercism/app/Crittercism$LoggingLevel;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 1085
    :goto_0
    return-void

    .line 1081
    :catch_0
    move-exception v0

    throw v0

    .line 1083
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setMetadata(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "metadata"    # Lorg/json/JSONObject;

    .prologue
    .line 706
    .line 17715
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 18025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 17717
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17718
    const-string v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 17722
    :goto_0
    return-void

    .line 18183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 17720
    if-nez v1, :cond_1

    .line 17721
    const-string v0, "setMetadata"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 708
    :catch_0
    move-exception v0

    throw v0

    .line 17724
    :cond_1
    :try_start_1
    invoke-virtual {v0, p0}, Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 710
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setOptOutStatus(Z)V
    .locals 2
    .param p0, "isOptedOut"    # Z

    .prologue
    .line 16694
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 17025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 17196
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 17060
    invoke-interface {v0}, Lcom/crittercism/internal/av;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 17061
    const-string v0, "Crittercism has not been initialized with a context and cannot save opt out status to disk. Ignoring request to set opt out status..."

    .line 17064
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 17086
    :goto_0
    return-void

    .line 17067
    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Lcom/crittercism/internal/bl$a; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 17068
    :try_start_1
    iget-boolean v0, v1, Lcom/crittercism/internal/dr;->a:Z

    if-eq v0, p0, :cond_2

    .line 17069
    iget-boolean v0, v1, Lcom/crittercism/internal/dr;->b:Z

    if-eqz v0, :cond_1

    .line 17070
    const-string v0, "Opt out status can only be changed once per session. setOptOutStatus() call is being ignored..."

    .line 17073
    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 17074
    monitor-exit v1

    goto :goto_0

    .line 17086
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lcom/crittercism/internal/bl$a; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 684
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->a(Lcom/crittercism/internal/bl$a;)V

    goto :goto_0

    .line 17076
    :cond_1
    :try_start_3
    invoke-virtual {v1, p0}, Lcom/crittercism/internal/dr;->a(Z)Z

    move-result v0

    .line 17077
    if-eqz v0, :cond_4

    .line 17078
    iput-boolean p0, v1, Lcom/crittercism/internal/dr;->a:Z

    .line 17079
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/crittercism/internal/dr;->b:Z

    .line 17206
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 17207
    if-eqz p0, :cond_3

    .line 17218
    const-string v0, "User opted out. Not initializing Crittercism"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 17086
    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_0

    .line 17210
    :cond_3
    invoke-virtual {v0}, Lcom/crittercism/internal/ax;->D()V

    goto :goto_1

    .line 17083
    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/crittercism/internal/dr;->b:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 686
    :catch_1
    move-exception v0

    throw v0

    .line 688
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setTransactionValue(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 955
    :try_start_0
    invoke-static {p0, p1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 961
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    throw v0

    .line 959
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUserflowValue(Ljava/lang/String;I)V
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # I

    .prologue
    .line 944
    :try_start_0
    invoke-static {p0, p1}, Lcom/crittercism/app/Crittercism;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 950
    :goto_0
    return-void

    .line 946
    :catch_0
    move-exception v0

    throw v0

    .line 948
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static setUsername(Ljava/lang/String;)V
    .locals 3
    .param p0, "username"    # Ljava/lang/String;

    .prologue
    .line 729
    .line 18738
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 19025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 18740
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18741
    const-string v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 18761
    :goto_0
    return-void

    .line 19183
    :cond_0
    iget-boolean v1, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 18743
    if-nez v1, :cond_1

    .line 18744
    const-string v0, "setUsername"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 731
    :catch_0
    move-exception v0

    throw v0

    .line 18748
    :cond_1
    if-nez p0, :cond_2

    .line 18749
    :try_start_1
    const-string v0, "Crittercism.setUsername() given invalid parameter: null"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 733
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 18753
    :cond_2
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 18756
    :try_start_3
    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ThreadDeath; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 18763
    :try_start_4
    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 18757
    :catch_2
    move-exception v0

    .line 18759
    const-string v1, "Crittercism.setUsername()"

    invoke-static {v1, v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/ThreadDeath; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0
.end method

.method public static updateLocation(Landroid/location/Location;)V
    .locals 2
    .param p0, "curLocation"    # Landroid/location/Location;

    .prologue
    .line 1028
    .line 27037
    :try_start_0
    invoke-static {}, Lcom/crittercism/internal/ax;->C()Lcom/crittercism/internal/ax;

    move-result-object v0

    .line 28025
    iget-object v1, v0, Lcom/crittercism/internal/ax;->g:Lcom/crittercism/internal/dr;

    .line 27039
    invoke-virtual {v1}, Lcom/crittercism/internal/dr;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27040
    const-string/jumbo v0, "updateLocation"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->h(Ljava/lang/String;)V

    .line 27049
    :goto_0
    return-void

    .line 28183
    :cond_0
    iget-boolean v0, v0, Lcom/crittercism/internal/ax;->b:Z

    .line 27042
    if-nez v0, :cond_1

    .line 27043
    const-string/jumbo v0, "updateLocation"

    invoke-static {v0}, Lcom/crittercism/app/Crittercism;->g(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 1030
    :catch_0
    move-exception v0

    throw v0

    .line 27047
    :cond_1
    if-nez p0, :cond_2

    .line 27048
    :try_start_1
    const-string v0, "Cannot leave null location"

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1032
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 27052
    :cond_2
    :try_start_2
    invoke-static {p0}, Lcom/crittercism/internal/ba;->a(Landroid/location/Location;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method
