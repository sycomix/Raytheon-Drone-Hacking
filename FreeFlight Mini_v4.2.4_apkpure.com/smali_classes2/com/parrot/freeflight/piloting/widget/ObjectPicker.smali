.class public Lcom/parrot/freeflight/piloting/widget/ObjectPicker;
.super Landroid/widget/NumberPicker;
.source "ObjectPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/parrot/freeflight/piloting/widget/Namable;",
        ">",
        "Landroid/widget/NumberPicker;"
    }
.end annotation


# instance fields
.field private mDispatchKeyListener:Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mList:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    invoke-direct {p0, p1}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method private updateView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 60
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parrot/freeflight/util/ui/FontUtils;->applyFont(Landroid/content/Context;Landroid/view/View;)V

    move-object v0, p1

    .line 62
    check-cast v0, Landroid/widget/EditText;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    move-object v0, p1

    .line 63
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00dc

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 64
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 42
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->updateView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 49
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->updateView(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/widget/NumberPicker;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->updateView(Landroid/view/View;)V

    .line 57
    return-void
.end method

.method public applyTheme(I)V
    .locals 8
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 69
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    const-class v4, Landroid/widget/NumberPicker;

    invoke-virtual {v4}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v3

    .line 70
    .local v3, "pickerFields":[Ljava/lang/reflect/Field;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 71
    .local v2, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mSelectionDivider"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    :try_start_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 75
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 86
    .end local v0    # "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_0
    :goto_1
    return-void

    .line 76
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 78
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    .line 79
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_1

    .line 80
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_2
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public decrement()V
    .locals 3

    .prologue
    .line 147
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 148
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "populatePicker must be call before"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->getValue()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 152
    .local v0, "newValue":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 153
    :cond_1
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setValue(I)V

    .line 154
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 90
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mDispatchKeyListener:Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mDispatchKeyListener:Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;

    invoke-interface {v0, p1}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;->onDispatchKey(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 93
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/NumberPicker;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getObject()Lcom/parrot/freeflight/piloting/widget/Namable;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 120
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "populatePicker must be call before"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 123
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->getValue()I

    move-result v0

    .line 124
    .local v0, "position":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/piloting/widget/Namable;

    return-object v1
.end method

.method public increment()V
    .locals 3

    .prologue
    .line 137
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "populatePicker must be call before"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->getValue()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 142
    .local v0, "newValue":I
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 143
    :cond_1
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setValue(I)V

    .line 144
    return-void
.end method

.method public populatePicker(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    .line 107
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 108
    .local v1, "size":I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setMinValue(I)V

    .line 109
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setMaxValue(I)V

    .line 110
    new-array v2, v1, [Ljava/lang/String;

    .line 111
    .local v2, "valuesToDisplay":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 112
    iget-object v3, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parrot/freeflight/piloting/widget/Namable;

    invoke-virtual {p0}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/parrot/freeflight/piloting/widget/Namable;->getName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0, v2}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setObject(Lcom/parrot/freeflight/piloting/widget/Namable;)V
    .locals 3
    .param p1    # Lcom/parrot/freeflight/piloting/widget/Namable;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    .local p1, "object":Lcom/parrot/freeflight/piloting/widget/Namable;, "TT;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "populatePicker must be call before"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 133
    .local v0, "position":I
    invoke-virtual {p0, v0}, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->setValue(I)V

    .line 134
    return-void
.end method

.method public setOnKeyDispatchedListener(Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 102
    .local p0, "this":Lcom/parrot/freeflight/piloting/widget/ObjectPicker;, "Lcom/parrot/freeflight/piloting/widget/ObjectPicker<TT;>;"
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/widget/ObjectPicker;->mDispatchKeyListener:Lcom/parrot/freeflight/piloting/widget/ObjectPicker$OnDispatchKeyListener;

    .line 103
    return-void
.end method
