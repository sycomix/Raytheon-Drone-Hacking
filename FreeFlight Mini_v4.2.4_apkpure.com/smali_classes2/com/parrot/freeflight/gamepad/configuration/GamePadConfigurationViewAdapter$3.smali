.class Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;
.super Ljava/lang/Object;
.source "GamePadConfigurationViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

.field final synthetic val$viewHolder:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    iput-object p2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;->val$viewHolder:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;->val$viewHolder:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-virtual {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;->getAdapterPosition()I

    move-result v0

    .line 207
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->access$300(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 209
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    iget-object v2, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;->val$viewHolder:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;

    invoke-static {v1, v2, v0}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->access$400(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$ConfigurationMappingViewHolder;I)V

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter$3;->this$0:Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;

    invoke-static {v1}, Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;->access$200(Lcom/parrot/freeflight/gamepad/configuration/GamePadConfigurationViewAdapter;)V

    goto :goto_0
.end method
