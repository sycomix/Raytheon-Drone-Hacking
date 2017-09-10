.class public final Lcom/crittercism/internal/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Lcom/crittercism/internal/at;

.field private f:Lcom/crittercism/internal/ax;

.field private g:Lcom/crittercism/internal/ap;

.field private h:Lcom/crittercism/internal/bb;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/crittercism/internal/at;Lcom/crittercism/internal/ax;Lcom/crittercism/internal/ap;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    .line 28
    iput-boolean v0, p0, Lcom/crittercism/internal/as;->b:Z

    .line 29
    iput-boolean v0, p0, Lcom/crittercism/internal/as;->c:Z

    .line 30
    iput-boolean v0, p0, Lcom/crittercism/internal/as;->d:Z

    .line 35
    iput-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    .line 43
    iput-object p1, p0, Lcom/crittercism/internal/as;->e:Lcom/crittercism/internal/at;

    .line 44
    iput-object p2, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    .line 45
    iput-object p3, p0, Lcom/crittercism/internal/as;->g:Lcom/crittercism/internal/ap;

    .line 46
    invoke-virtual {p1}, Lcom/crittercism/internal/at;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1058
    new-instance v1, Lcom/crittercism/internal/bb;

    invoke-direct {v1, v0, p2}, Lcom/crittercism/internal/bb;-><init>(Landroid/content/Context;Lcom/crittercism/internal/ax;)V

    .line 47
    iput-object v1, p0, Lcom/crittercism/internal/as;->h:Lcom/crittercism/internal/bb;

    .line 48
    return-void
.end method

.method public static a(Lcom/crittercism/internal/at;Lcom/crittercism/internal/as;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 245
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 2050
    :try_start_0
    iget-object v0, p0, Lcom/crittercism/internal/at;->a:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 2051
    new-instance v0, Lcom/crittercism/internal/at$b;

    invoke-direct {v0}, Lcom/crittercism/internal/at$b;-><init>()V

    throw v0
    :try_end_0
    .catch Lcom/crittercism/internal/at$b; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    :catch_0
    move-exception v0

    const-string v0, "Application context not provided. Automatic breadcrumbs and transaction foreground times will not be recorded."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/String;)V

    .line 260
    :goto_0
    return-void

    .line 2053
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/at;->a:Landroid/app/Application;
    :try_end_1
    .catch Lcom/crittercism/internal/at$b; {:try_start_1 .. :try_end_1} :catch_0

    .line 255
    const-string v1, "registering lifecycle callbacks"

    invoke-static {v1}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v0, p1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    .line 258
    :cond_1
    const-string v0, "API Level is less than 14. Automatic breadcrumbs are not supported."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->c(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 233
    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 139
    .line 1148
    if-eqz p1, :cond_1

    .line 1154
    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    if-nez v0, :cond_0

    .line 1156
    const/4 v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    .line 1157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    .line 1158
    const-string v0, "about to send app load from onPause"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/crittercism/internal/as;->g:Lcom/crittercism/internal/ap;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->a()V

    .line 1162
    :cond_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->c:Z

    if-eqz v0, :cond_1

    .line 1163
    iget-object v0, p0, Lcom/crittercism/internal/as;->h:Lcom/crittercism/internal/bb;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->c:Z
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :cond_1
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v0

    throw v0

    .line 143
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 74
    .line 1083
    if-eqz p1, :cond_2

    .line 1087
    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    if-nez v0, :cond_0

    .line 1088
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    .line 1089
    const-string v0, "about to send app load from onResume"

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 1090
    iget-object v0, p0, Lcom/crittercism/internal/as;->g:Lcom/crittercism/internal/ap;

    invoke-virtual {v0}, Lcom/crittercism/internal/ap;->a()V

    .line 1093
    :cond_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->b:Z

    if-eqz v0, :cond_3

    .line 1094
    const-string v0, "not a foreground. rotation event."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 1095
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->b:Z

    .line 1125
    :cond_1
    :goto_0
    iget v0, p0, Lcom/crittercism/internal/as;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    .line 1126
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1128
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1129
    iget-object v1, p0, Lcom/crittercism/internal/as;->h:Lcom/crittercism/internal/bb;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->c:Z

    .line 80
    :cond_2
    :goto_1
    return-void

    .line 1096
    :cond_3
    iget v0, p0, Lcom/crittercism/internal/as;->a:I

    if-nez v0, :cond_5

    .line 1097
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/bj;

    sget-object v2, Lcom/crittercism/internal/bj$a;->a:Lcom/crittercism/internal/bj$a;

    invoke-direct {v1, v2}, Lcom/crittercism/internal/bj;-><init>(Lcom/crittercism/internal/bj$a;)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    .line 1099
    invoke-static {}, Lcom/crittercism/internal/be;->g()V

    .line 1101
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->d:Z

    if-nez v0, :cond_1

    .line 1102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->d:Z

    .line 1103
    iget-object v0, p0, Lcom/crittercism/internal/as;->e:Lcom/crittercism/internal/at;

    invoke-virtual {v0}, Lcom/crittercism/internal/at;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 1104
    new-instance v1, Lcom/crittercism/internal/d;

    invoke-direct {v1, v0}, Lcom/crittercism/internal/d;-><init>(Landroid/content/Context;)V

    .line 1105
    invoke-virtual {v1}, Lcom/crittercism/internal/d;->a()Lcom/crittercism/internal/b;

    move-result-object v0

    .line 1106
    sget-object v1, Lcom/crittercism/internal/b;->c:Lcom/crittercism/internal/b;

    if-eq v0, v1, :cond_1

    .line 1107
    sget-object v1, Lcom/crittercism/internal/b;->d:Lcom/crittercism/internal/b;

    if-ne v0, v1, :cond_4

    .line 1108
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/cc;

    sget v2, Lcom/crittercism/internal/cc$a;->b:I

    invoke-direct {v1, v2}, Lcom/crittercism/internal/cc;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    throw v0

    .line 1111
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/cc;

    sget v2, Lcom/crittercism/internal/cc$a;->a:I

    invoke-direct {v1, v2}, Lcom/crittercism/internal/cc;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 78
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1120
    :cond_5
    :try_start_2
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/bh;

    sget v2, Lcom/crittercism/internal/bh$a;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/crittercism/internal/bh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
    :try_end_2
    .catch Ljava/lang/ThreadDeath; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 69
    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 190
    .line 1199
    if-eqz p1, :cond_1

    .line 1203
    :try_start_0
    iget-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    if-nez v0, :cond_0

    .line 1205
    const/4 v0, 0x1

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    .line 1206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->i:Z

    .line 1209
    :cond_0
    iget v0, p0, Lcom/crittercism/internal/as;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/crittercism/internal/as;->a:I

    .line 1211
    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1212
    const-string v0, "not a background. rotation event."

    invoke-static {v0}, Lcom/crittercism/internal/dw;->d(Ljava/lang/String;)V

    .line 1213
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/crittercism/internal/as;->b:Z

    .line 1217
    :cond_1
    :goto_0
    return-void

    .line 1214
    :cond_2
    iget v0, p0, Lcom/crittercism/internal/as;->a:I

    if-nez v0, :cond_3

    .line 1215
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/bj;

    sget-object v2, Lcom/crittercism/internal/bj$a;->b:Lcom/crittercism/internal/bj$a;

    invoke-direct {v1, v2}, Lcom/crittercism/internal/bj;-><init>(Lcom/crittercism/internal/bj$a;)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V

    .line 1217
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    invoke-static {v0}, Lcom/crittercism/internal/be;->a(Lcom/crittercism/internal/ax;)V
    :try_end_0
    .catch Ljava/lang/ThreadDeath; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    throw v0

    .line 1219
    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/crittercism/internal/as;->f:Lcom/crittercism/internal/ax;

    new-instance v1, Lcom/crittercism/internal/bh;

    sget v2, Lcom/crittercism/internal/bh$a;->b:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/crittercism/internal/bh;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/crittercism/internal/ax;->a(Lcom/crittercism/internal/cg;)V
    :try_end_1
    .catch Ljava/lang/ThreadDeath; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 194
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/crittercism/internal/dw;->b(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
