.class Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$4;
.super Ljava/lang/Object;
.source "AccessoryChoiceActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/util/ProductColor$OnThemeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$4;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onThemeChanged()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity$4;->this$0:Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;->access$300(Lcom/parrot/freeflight/piloting/ui/AccessoryChoiceActivity;)V

    .line 140
    return-void
.end method
