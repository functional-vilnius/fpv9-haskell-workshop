
import           Test.Hspec

import           Defaults
import           Lib
import           Types

main :: IO ()
main = hspec $
  describe "default font" $ do
    it "renders space correctly" $
      render " " defaultFont `shouldBe` concat [
        "            \n",
        "            \n",
        "            \n",
        "            \n",
        "            \n",
        "            \n",
        "            \n",
        "            \n",
        "            \n",
        "            \n",
        "            \n",
        "            "
        ]

    it "renders single letter correctly" $
      render "A" defaultFont `shouldBe` concat [
        "            \n",
        "            \n",
        "     @@@    \n",
        "    @   @   \n",
        "    @   @   \n",
        "    @   @   \n",
        "    @@@@@   \n",
        "    @   @   \n",
        "    @   @   \n",
        "    @   @   \n",
        "            \n",
        "            "
        ]

    it "renders a few letters correctly" $
      render "Ab" defaultFont `shouldBe` concat [
        "                        \n",
        "                        \n",
        "     @@@        @       \n",
        "    @   @       @       \n",
        "    @   @       @@@@    \n",
        "    @   @       @   @   \n",
        "    @@@@@       @   @   \n",
        "    @   @       @   @   \n",
        "    @   @       @   @   \n",
        "    @   @       @@@@    \n",
        "                        \n",
        "                        "
        ]

    it "has ability to change a filler" $
      render "Ab" (defaultFont {filler='*'}) `shouldBe` concat [
        "                        \n",
        "                        \n",
        "     ***        *       \n",
        "    *   *       *       \n",
        "    *   *       ****    \n",
        "    *   *       *   *   \n",
        "    *****       *   *   \n",
        "    *   *       *   *   \n",
        "    *   *       *   *   \n",
        "    *   *       ****    \n",
        "                        \n",
        "                        "
        ]
