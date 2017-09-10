.class public final Lcom/crittercism/internal/bv$e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crittercism/internal/bv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field private a:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput-object v3, p0, Lcom/crittercism/internal/bv$e;->a:Ljava/lang/Double;

    .line 345
    invoke-static {}, Lcom/crittercism/internal/bv;->b()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    invoke-static {}, Lcom/crittercism/internal/bv;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 350
    if-eqz v0, :cond_0

    .line 354
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 356
    if-eqz v2, :cond_0

    .line 360
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 362
    const-string v3, "level"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 363
    const-string v4, "scale"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    int-to-double v4, v2

    .line 364
    if-ltz v3, :cond_2

    const-wide/16 v6, 0x0

    cmpl-double v2, v4, v6

    if-lez v2, :cond_2

    .line 365
    int-to-double v0, v3

    div-double/2addr v0, v4

    .line 368
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/crittercism/internal/bv$e;->a:Ljava/lang/Double;

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    const-string v0, "battery_level"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 340
    .line 1377
    iget-object v0, p0, Lcom/crittercism/internal/bv$e;->a:Ljava/lang/Double;

    .line 340
    return-object v0
.end method
