.class public abstract Lcom/parrot/freeflight/core/AutoLaunchChecker;
.super Ljava/lang/Object;
.source "AutoLaunchChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/core/AutoLaunchChecker$LaunchType;
    }
.end annotation


# static fields
.field public static final LAUNCH_LATER:I = 0x0

.field public static final LAUNCH_NOW:I = 0x1

.field public static final NO_NEED_LAUNCH:I = 0x2


# instance fields
.field private mConditionMet:Z

.field private mNeedAutoLaunch:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLaunchIntent()Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end method

.method public getLaunchType(Landroid/app/Activity;)I
    .locals 1
    .param p1, "currentActivity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public isConditionMet()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mConditionMet:Z

    return v0
.end method

.method public isNeedAutoLaunch()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mNeedAutoLaunch:Z

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mNeedAutoLaunch:Z

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mConditionMet:Z

    .line 36
    return-void
.end method

.method public setCondition(Z)V
    .locals 1
    .param p1, "newValue"    # Z

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mConditionMet:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mNeedAutoLaunch:Z

    .line 29
    :cond_0
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mConditionMet:Z

    .line 30
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mConditionMet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mNeedAutoLaunch:Z

    .line 31
    :cond_1
    return-void
.end method

.method public setNeedAutoLaunch(Z)V
    .locals 0
    .param p1, "needAutoLaunch"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mNeedAutoLaunch:Z

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{ConditionMet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mConditionMet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", NeedAutoLaunch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/parrot/freeflight/core/AutoLaunchChecker;->mNeedAutoLaunch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
