#include "global.h"
#include "entity.h"
#include "functions.h"

extern void sub_080542C0();
extern void sub_08088424();
extern bool32 sub_08088160();

extern bool32 ReadBit(u8*, u32);
extern void SetLocalFlag(u32);
extern void SetRoomFlag(u32);

extern u8 gUnk_02002B0E[];

void sub_08088328(Entity* this) {
    u32 threshold;
    bool32 newFigurine;
    u32 startFigurine;
    u32 chosenFigurine;
    do {
    } while((threshold = Random() & 0x7F) > 99);

    sub_080542C0(-this->field_0x80.HALF.HI);

    chosenFigurine = startFigurine = (Random() & 0x7F) + 1;
    sub_08088424(this);

    if (threshold < (s8)this->field_0x82.HALF.HI) {
        newFigurine = FALSE;
        do {
            if (newFigurine) {
                break;
            }
            if (chosenFigurine > 136) {
                chosenFigurine = 1;
            }
            if (sub_08088160(this, chosenFigurine) && !ReadBit(gUnk_02002B0E, chosenFigurine)) {
                newFigurine = TRUE;
            }
            else {
                chosenFigurine++;
            }
        } while (startFigurine != chosenFigurine);
    }
    else {
        newFigurine = TRUE;
        do {
            if (!newFigurine) {
                break;
            }
            if (chosenFigurine > 136) {
                chosenFigurine = 1;
            }
            
            if (sub_08088160(this, chosenFigurine) && ReadBit(gUnk_02002B0E, chosenFigurine)) {
                newFigurine = FALSE;
            }
            else {
                chosenFigurine++;
            }
            
        } while (startFigurine != chosenFigurine);
    }
    if (newFigurine) {
        gUnk_02002A40.stats.figurineCount++;
        if (gUnk_02002A40.stats.figurineCount != this->field_0x80.HALF.LO) {
            SetRoomFlag(0x7);
        }
        else {
            SetLocalFlag(0x5f);
            SetRoomFlag(0x8);
        }
    }
    this->field_0x7c.BYTES.byte1 = chosenFigurine;
    this->parent->field_0x7c.BYTES.byte1 = chosenFigurine;
}
