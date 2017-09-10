.class public Lcom/parrot/freeflight/util/ActivityLifeCycle;
.super Ljava/lang/Object;
.source "ActivityLifeCycle.java"


# static fields
.field private static sResumeField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    :try_start_0
    const-class v1, Landroid/support/v4/app/FragmentActivity;

    const-string v2, "mResumed"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lcom/parrot/freeflight/util/ActivityLifeCycle;->sResumeField:Ljava/lang/reflect/Field;

    .line 14
    sget-object v1, Lcom/parrot/freeflight/util/ActivityLifeCycle;->sResumeField:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void

    .line 15
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_0
    move-exception v0

    .line 16
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 17
    const/4 v1, 0x0

    sput-object v1, Lcom/parrot/freeflight/util/ActivityLifeCycle;->sResumeField:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isResumed(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 22
    sget-object v1, Lcom/parrot/freeflight/util/ActivityLifeCycle;->sResumeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 24
    :try_start_0
    sget-object v1, Lcom/parrot/freeflight/util/ActivityLifeCycle;->sResumeField:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 29
    :goto_0
    return v1

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 29
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static onBackPressed(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .param p0, "activity"    # Landroid/support/v4/app/FragmentActivity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-static {p0}, Lcom/parrot/freeflight/util/ActivityLifeCycle;->isResumed(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->supportFinishAfterTransition()V

    goto :goto_0
.end method
