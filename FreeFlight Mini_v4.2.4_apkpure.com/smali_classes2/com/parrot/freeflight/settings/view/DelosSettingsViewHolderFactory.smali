.class public Lcom/parrot/freeflight/settings/view/DelosSettingsViewHolderFactory;
.super Ljava/lang/Object;
.source "DelosSettingsViewHolderFactory.java"

# interfaces
.implements Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/parrot/freeflight/settings/ISettingsViewHolderFactory",
        "<",
        "Lcom/parrot/freeflight/core/model/DelosModel;",
        "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILcom/parrot/freeflight/piloting/ui/util/ProductColor;)Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "viewType"    # I
    .param p4, "productColor"    # Lcom/parrot/freeflight/piloting/ui/util/ProductColor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/LayoutInflater;",
            "Landroid/view/ViewGroup;",
            "I",
            "Lcom/parrot/freeflight/piloting/ui/util/ProductColor;",
            ")",
            "Lcom/parrot/freeflight/settings/view/SettingsViewHolder",
            "<",
            "Lcom/parrot/freeflight/settings/model/SettingsEntry",
            "<**",
            "Lcom/parrot/freeflight/core/model/DelosModel;",
            "Lcom/parrot/freeflight/piloting/model/LocalSettingsModel;",
            ">;>;"
        }
    .end annotation

    .prologue
    const v4, 0x7f0400a4

    const v2, 0x7f0400b0

    const/4 v3, 0x0

    .line 24
    packed-switch p3, :pswitch_data_0

    .line 76
    :pswitch_0
    const/4 v1, 0x0

    .line 79
    .local v1, "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :goto_0
    return-object v1

    .line 26
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_1
    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 27
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/ProgressLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 28
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 31
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_2
    const v2, 0x7f04006f

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/EditTextLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 33
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 36
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_3
    const v2, 0x7f0400ac

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/TextViewLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 38
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 41
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_4
    const v2, 0x7f04007c

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 42
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/DelosJoystickSettingsViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 43
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 46
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_5
    const v2, 0x7f0400b7

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/WingXJoystickSettingsViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 48
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 51
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_6
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 52
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/ToggleStateLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 53
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 56
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_7
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/BooleanSettingsViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 58
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 61
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_8
    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/AccessoriesLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 63
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 66
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_9
    const v2, 0x7f04004c

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 67
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/ButtonLayoutViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 68
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 71
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    :pswitch_a
    invoke-virtual {p1, v4, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 72
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;

    invoke-direct {v1, v0, p4}, Lcom/parrot/freeflight/settings/view/HydrofoilProgressBarViewHolder;-><init>(Landroid/view/View;Lcom/parrot/freeflight/piloting/ui/util/ProductColor;)V

    .line 73
    .restart local v1    # "viewHolder":Lcom/parrot/freeflight/settings/view/SettingsViewHolder;
    goto :goto_0

    .line 24
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
