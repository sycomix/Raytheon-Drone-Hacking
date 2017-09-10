.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$4;
.super Ljava/lang/Object;
.source "GamePadConfigurationViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->startBackgroundAnimation(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

.field final synthetic val$backgroundAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$4;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$4;->val$backgroundAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$4;->val$backgroundAnimationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 550
    return-void
.end method
